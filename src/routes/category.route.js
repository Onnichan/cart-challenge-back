const { Router } = require("express");
const AuthMiddleware = require("../middlewares/jwt.middleware");
const CategoryController = require("../controllers/category.controller");

// eslint-disable-next-line func-names
module.exports = function () {
  const router = Router();

  router.get("/", CategoryController.getAll);
  // router.get('/detail', ProductController.detail)
  router.post("/", CategoryController.create);
  router.patch("/:id", CategoryController.update);
  router.delete("/:id", CategoryController.delete);

  return router;
};
