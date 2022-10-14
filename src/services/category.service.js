const errorHelper = require("../helpers/error.helper");
const categoryRepository = require("../repositories/category.repository");
const pagingData = require("../helpers/pagingData.helper");

class CategoryService {
  async getAll(pageSize, pageNum) {
    const categories = await categoryRepository.getAll(pageSize, pageNum);
    return categories;
  }

  async getById(id) {
    const getById = await categoryRepository.getById(id);
    return getById;
  }

  async create(entity) {
    const { name } = entity;
    const field = { name };
    const genreExist = await categoryRepository.findByField(field);
    console.log(genreExist);
    if (genreExist) errorHelper("This genre already exist", 401);

    const createEntity = await categoryRepository.create(entity);
    return createEntity;
  }

  async update(id, body) {
    const updated = await categoryRepository.update(id, body);
    return updated[0] > 0
      ? "The category was updated"
      : "Could not update the category";
  }

  async delete(id) {
    const deleted = await categoryRepository.delete(id);
    return deleted > 0 ? "Category was deleted" : "Category was not deleted";
  }

  async findByField(query) {
    console.log(query);
    const getGenre = await categoryRepository.findByField(query);
    return getGenre;
  }

  async filteredProductsByCategory(category, limit, offset, page) {
    const products = await categoryRepository.filteredProductsByCategory(
      category,
      limit,
      offset
    );
    // console.log(products.rows[0]['Products']);
    const newProducts = pagingData(products, page, limit, true);
    return newProducts;
  }
}

module.exports = new CategoryService();
