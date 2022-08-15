var express = require("express");
var router = express.Router();
const pool = require("../pool");

/* GET home page. */
router.get("/selectHero/:params", async function (req, res, next) {
  console.log("params", req.params.params);
  let ans = [];
  const [rows, fields] = await pool.query(
    `SELECT * FROM Hero WHERE Hero_id = ${req.params.params}`
  );
  ans.push(rows);

  const [rows2, fields2] = await pool.query(
    `SELECT * FROM Movie WHERE Movie_id = ${req.params.params}`
  );
  ans.push(rows2);

  console.log("rows", ans);
  res.status(200).send(ans);
});

module.exports = router;
