const productService = require("../services/product.service");
const pagination = require("../helpers/pagination.helper");

class ProductController {
  async create(req, res) {
    const { body } = req;
    console.log(body);
    const product = await productService.create(body);
    return res.send(product);
  }

  async getAll(req, res) {
    // console.log(Object.keys(req.query));
    const { page, size } = req.query;
    const { limit, offset } = pagination(page, size);
    const products = await productService.getAll(limit, offset, page);
    return res.send(products);
  }

  async getById(req, res) {
    const { id } = req.params;
    const productId = await productService.getById(id);
    return res.send(productId);
  }

  async update(req, res) {
    const { body } = req;
    const { id } = req.params;
    const productUpdated = await productService.update(id, body);
    return res.send(productUpdated);
  }

  async delete(req, res) {
    const { id } = req.params;
    const productDeleted = await productService.delete(id);
    return res.send(productDeleted);
  }
}

module.exports = new ProductController();
