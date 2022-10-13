const categoryService = require("../services/category.service");

class CategoryController {
  async create(req, res) {
    const { body } = req;
    console.log(body);
    const category = await categoryService.create(body);
    return res.send(category);
  }

  async getAll(req, res) {
    // console.log(Object.keys(req.query));
    console.log(req.query);
    const {pageSize, pageNum} = req.query;
    const categories = await categoryService.getAll(pageSize, pageNum);
    return res.send(categories);
  }

  async getById(req, res) {
    const { id } = req.params;
    const categoryId = categoryService.getById(id);
    return res.send(categoryId);
  }

  async update(req, res) {
    const { body } = req;
    const { id } = req.params;
    const categoryUpdated = await categoryService.update(id, body);
    return res.send(categoryUpdated);
  }

  async delete(req, res) {
    const { id } = req.params;
    const categoryDeleted = await categoryService.delete(id);
    return res.send(categoryDeleted);
  }
}

module.exports = new CategoryController();
