const mysql = require("mysql2/promise");

var pool = mysql.createPool({
  connectionLimit: 10,
  host: "db",
  user: "root",
  password: "root",
  database: "0030_Lab_Exam",
  port: 3306,
});

module.exports = pool;
