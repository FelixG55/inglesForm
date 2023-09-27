module.exports = (sequelize, dataTypes) => {
    let alias = 'Resultado';
    let cols = {
        id: {
            type: dataTypes.BIGINT(11),
            primaryKey: true,
            autoIncrement: true,        
            allowNull: false
        },
        resultado: {
            type: dataTypes.STRING(45),
            allowNull: false
        },
        email: {
            type: dataTypes.STRING(45),
            allowNull: false
        },
        nombre: {
            type: dataTypes.STRING(45),
            allowNull: false
        },
        apellido: {
            type: dataTypes.STRING(45),
            allowNull: false
        },
        interviewer: {
            type: dataTypes.STRING(45),
            allowNull: false
        },
        cedula: {
            type: dataTypes.STRING(45),
            allowNull: false
        }
    };
    let config = {
        tableName: "resultados",
        timestamps: false
    }
    const Resultado = sequelize.define(alias, cols, config); 

    //Aquí debes realizar lo necesario para crear las relaciones con el modelo (Movie)

    // Category.associate = function(modelos){
    //     Category.hasMany(modelos.Product,{

    //         as: "products",
    //         foreignKey: "categories_id"
    //     })
    //  }   
 
    return Resultado
};