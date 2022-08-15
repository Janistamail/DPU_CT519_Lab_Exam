var express = require("express");
var router = express.Router();
const pool = require("../pool");

/* GET home page. */
router.get("/", async function (req, res, next) {
  try {
    const [rows, fields] = await pool.query(`SELECT * FROM Hero`);
    // console.log(rows);
    res.status(200).send(rows);
  } catch (e) {
    console.log(e);
  }
});

module.exports = router;
