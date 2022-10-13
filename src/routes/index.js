const { Router, json } = require("express");
const cors = require("cors");
const helmet = require("helmet");
// const compression = require('compression')
const AuthRoutes = require("./auth.route");
const ProductRoutes = require("./product.route");
const CategoryRoutes = require("./category.route");
// const CharacterRoutes = require('./character.route')
// const MovieRoutes = require('./movie.route');
// const GenreRoutes = require('./genre.route');
const notFoundMiddleware = require("../middlewares/notfound.middleware");
const errorMiddleware = require("../middlewares/error.middleware");
require("express-async-errors");

// eslint-disable-next-line func-names
module.exports = function () {
  const router = Router();
  const apiRoutes = Router();
  apiRoutes.use(json());
  apiRoutes.use(cors());
  // apiRoutes.use(compression())
  apiRoutes.use(helmet());
  apiRoutes.use("/auth", AuthRoutes());
  apiRoutes.use("/categories", CategoryRoutes());
  apiRoutes.use("/products", ProductRoutes());
  // apiRoutes.use('/characters', CharacterRoutes())
  // apiRoutes.use('/movies', MovieRoutes())
  // apiRoutes.use('/genre', GenreRoutes())

  router.use("/api/v1", apiRoutes);
  router.use(notFoundMiddleware);
  router.use(errorMiddleware);

  return router;
};
