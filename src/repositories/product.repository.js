const { ProductModel, CategoryModel } = require("../models");

class ProductRepository {
  async getAll(limit, offset) {
    const findAll = await ProductModel.findAndCountAll({
      limit,
      offset,
    });
    return findAll;
  }

  async create(entity) {
    const create = await ProductModel.create(entity);
    return create;
  }

  async update(id, body) {
    const update = await ProductModel.update(body, { where: { id } });
    return update;
  }

  async delete(id) {
    const destroy = await ProductModel.destroy({ where: { id } });
    return destroy;
  }

  async findByField(field) {
    console.log("field", field);
    const findOne = await ProductModel.findOne({ where: field });
    return findOne;
  }

  async getById(id) {
    console.log(id);
    const findOne = await ProductModel.findOne({
      where: { id },
      include: CategoryModel,
    });
    console.log(findOne);
    return findOne;
  }
}

module.exports = new ProductRepository();
