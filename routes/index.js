const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, Title, Description, Image, Calories, Type FROM tbl_things";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        //console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('home', { data: result });
    })
})

//our dinamic placeholder
//localhost:3000/1 or 2 or 3 (anything that you put after the / in the localhost)

router.get('/:id', (req, res) => {
   // console.log('hit a dynamic route!');
    console.log(req.params.id);

    let query = `SELECT * FROM tbl_info WHERE ThingsID="${req.params.id}"`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        // send the DB query back to the browser
        res.json(result);
    })
})

module.exports = router;