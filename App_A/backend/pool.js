const mysql = require("mysql2/promise");

var pool = mysql.createPool({
  connectionLimit: 10,
  host: "localhost",
  user: "root",
  password: "root",
  database: "0030_Lab_Exam",
  port: 8889,
});

module.exports = pool;
