const { Model, DataTypes } = require("sequelize");
const sequelize = require("../config/connection");
const Product = require("./product.model");
const Category = require("./category.model");
// const Genre = require('./genre.model')
// const Character = require('./character.model')
// const Movie = require('./movie.model')
const User = require("./user.model");

// class CharactersMovies extends Model {}

// CharactersMovies.init({
//   id: {
//     type: DataTypes.INTEGER,
//     autoIncrement: true,
//     primaryKey: true,
//   },
// },{
//   sequelize
// })
Category.hasMany(Product);
Product.belongsTo(Category);

// Movie.hasMany(Genre)
// Genre.belongsTo(Movie)

// Character.belongsToMany(Movie, { through: CharactersMovies })
// Movie.belongsToMany(Character, { through: CharactersMovies })

module.exports = {
  UserModel: User,
  ProductModel: Product,
  CategoryModel: Category,
  // GenreModel: Genre,
  // CharacterModel: Character,
  // MovieModel: Movie,
};
