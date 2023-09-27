const { Sequelize } = require(".");

module.exports= (sequelize, DataTypes)=>{
    const User = sequelize.define("User", {
        id: {
            type: DataTypes.INTEGER, 
            primaryKey: true,
            auto_increment: true,
        },
        name:{
            type: DataTypes.STRING,
            not_null: true
         },
        email:{
            type: DataTypes.STRING,
            not_null: true
         },
         image:{
            type: DataTypes.STRING
         },
         },{
            tableName: "users",
            timestamps: false
         })
         return User
}