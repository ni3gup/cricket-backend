const path = require('path');

const config = {
  client: 'mysql',
  connection: {
    host : 'localhost',
    database: 'cricket',
    user: 'root',
    password: '',
    options:{
        port: 3306
    }
  },
  pool: {
    min: 2,
    max: 10
  },
  migrations: {
    directory: path.join(__dirname, './migrations/')
  },
  seeds: {
    directory: path.join(__dirname, './seeders/')
  }
}

module.exports = config;
