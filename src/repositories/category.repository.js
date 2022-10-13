const { CategoryModel } = require("../models");

class CategoryRepository {
  async getAll() {
    const findAll = await CategoryModel.findAll({
      attributes: ["name"],
    });
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
}

module.exports = new CategoryRepository();
