module.exports = (sequelize, dataTypes) => {
    let alias = 'User';
    let cols = {
        id: {
            type: dataTypes.BIGINT(11).UNSIGNED,
            primaryKey: true,
            autoIncrement: true
        },
        name: {
            type: dataTypes.STRING(45),
            allowNull: false
        },
        lastname: {
            type: dataTypes.STRING(250),
            allowNull: false
        },
        email: {
            type: dataTypes.STRING(250),
            allowNull: false
        },
        password:{
            type: dataTypes.STRING(100),
            allowNull: false
        },
        admin:{
            type: dataTypes.BIGINT(1),
            allowNull: false
        },
        interviewer: {
            type: dataTypes.STRING(45),
            allowNull: false
        }
        
    };
    let config = {
        timestamps: false,
    }
    const User = sequelize.define(alias, cols, config); 

    //Aquí debes realizar lo necesario para crear las relaciones con el modelo

 
    return User;
};