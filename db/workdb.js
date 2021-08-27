const connection = require("./connection");

class WorkDatabase {
    constructor(connection) {
        this.connection = connection; 
    }
    
    selectAllrole() {
        return this.connection.promise().query("SELECT * FROM role");
    }

    selectAllEmployee() {
        return this.connection.promise().query("SELECT * FROM employee");
    }
} 

module.exports = new WorkDatabase(connection);