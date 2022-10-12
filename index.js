const express = require("express");
const { PORT } = require("./src/config");
const sequelize = require("./src/config/connection");

const app = express();

sequelize.sync({ logging: false, force: true });
