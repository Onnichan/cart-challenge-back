const { CategoryModel, ProductModel } = require("../models");
const { findOne } = require("../models/product.model");

class CategoryRepository {
  async getAll() {
    const findAll = await CategoryModel.findAll();
    return findAll;
  }

  async create(entity) {
    const create = await CategoryModel.create(entity);
    return create;
  }

  async update(id, body) {
    const update = await CategoryModel.update(body, { where: { id } });
    return update;
  }

  async delete(id) {
    const destroy = await CategoryModel.destroy({ where: { id } });
    return destroy;
  }

  async findByField(field) {
    console.log("field", field);
    const findOne = await CategoryModel.findOne({ where: field });
    return findOne;
  }

  async filteredProductsByCategory(category,limit, offset) {
    console.log(category, "in repository");
    const products = await CategoryModel.findAndCountAll({
      where: { name: category },
      include: ProductModel,
      limit,
      offset,
    });
    return products;
  }
}

module.exports = new CategoryRepository();
