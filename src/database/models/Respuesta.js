module.exports = (sequelize, dataTypes) => {
    let alias = 'Respuesta';
    let cols = {
        id: {
            type: dataTypes.BIGINT(11),
            primaryKey: true,
            autoIncrement: true,        
            allowNull: false
        },
        respuesta: {
            type: dataTypes.STRING(45),
            allowNull: false
        },
        idPregunta: {
            type: dataTypes.BIGINT(11),
            allowNull: false
        },
        respuestaCorrecta: {
            type: dataTypes.BIGINT(11),
            allowNull: false
        }
    };
    let config = {
        tableName: "respuestas",
        timestamps: false
    }
    const Respuesta = sequelize.define(alias, cols, config); 

    //Aquí debes realizar lo necesario para crear las relaciones con el modelo (Movie)

    // Category.associate = function(modelos){
    //     Category.hasMany(modelos.Product,{

    //         as: "products",
    //         foreignKey: "categories_id"
    //     })
    //  }   
 
    return Respuesta
};