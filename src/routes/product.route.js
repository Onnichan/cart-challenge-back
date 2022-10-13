const { Router } = require("express");
const AuthMiddleware = require("../middlewares/jwt.middleware");
const ProductController = require("../controllers/product.controller");

// eslint-disable-next-line func-names
module.exports = function () {
  const router = Router();

  router.get("/", ProductController.getAll);
  // router.get('/detail', ProductController.detail)
  router.post("/", ProductController.create);
  router.patch("/:id", ProductController.update);
  router.delete("/:id", ProductController.delete);

  return router;
};
