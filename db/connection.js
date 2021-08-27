const mysql = require("mysql2"); 

const connection = mysql.createConnection ({
    host: "local host",
    user: "root",
    Password: "!Holman217",
    database: "work_db" 
}); 

connection.connect((err) => {
    if (err) {
        console.log(err);
        throw err;
    }
}); 

module.exports = connection; 