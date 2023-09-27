module.exports = (sequelize, dataTypes) => {
    let alias = 'Pregunta';
    let cols = {
        id: {
            type: dataTypes.BIGINT(11),
            primaryKey: true,
            autoIncrement: true,        
            allowNull: false
        },
        pregunta: {
            type: dataTypes.STRING(200),
            allowNull: false
        },
        reading: {
            type: dataTypes.BIGINT(11),
            allowNull: false
        },
        language: {
            type: dataTypes.BIGINT(11),
            allowNull: false
        },
        listening: {
            type: dataTypes.BIGINT(11),
            allowNull: false
        },
        passage: {
            type: dataTypes.BIGINT(11),
            allowNull: false
        },
        situation: {
            type: dataTypes.BIGINT(11),
            allowNull: false
        },
        conversation: {
            type: dataTypes.BIGINT(200),
            allowNull: false
        }
    };
    let config = {
        tableName: "preguntas",
        timestamps: false
    }
    const Pregunta = sequelize.define(alias, cols, config); 

    //Aquí debes realizar lo necesario para crear las relaciones con el modelo (Movie)

    // Category.associate = function(modelos){
    //     Category.hasMany(modelos.Product,{

    //         as: "products",
    //         foreignKey: "categories_id"
    //     })
    //  }   
 
    return Pregunta
};