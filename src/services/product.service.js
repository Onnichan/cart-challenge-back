const errorHelper = require("../helpers/error.helper");
const pagingData = require("../helpers/pagingData.helper");
const productRepository = require("../repositories/product.repository");

class ProductService {
  async getAll(limit, offset, page) {
    const products = await productRepository.getAll(limit, offset);
    const newProducts = pagingData(products, page, limit);
    return newProducts;
  }

  async getById(id) {
    const getById = await productRepository.getById(id);
    return getById;
  }

  async create(entity) {
    const { name } = entity;
    const field = { name };
    const genreExist = await productRepository.findByField(field);
    console.log(genreExist);
    if (genreExist) errorHelper("This product already exist", 401);

    const createEntity = await productRepository.create(entity);
    return createEntity;
  }

  async update(id, body) {
    const updated = await productRepository.update(id, body);
    return updated[0] > 0
      ? "The product was updated"
      : "Could not update the product";
  }

  async delete(id) {
    const deleted = await productRepository.delete(id);
    return deleted > 0 ? "Product was deleted" : "Product was not deleted";
  }

  async findByField(query) {
    console.log(query);
    const getGenre = await productRepository.findByField(query);
    return getGenre;
  }
}

module.exports = new ProductService();
