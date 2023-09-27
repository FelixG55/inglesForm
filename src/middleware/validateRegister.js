const {check}= require('express-validator');
const path = require('path');
const db = require('../database/models');
const { log } = require('console');

let validateRegister = [
    check('name')
        .notEmpty().withMessage('Tienes que escribir un nombre').isLength({min:2}).withMessage('Debe tener mas de dos caracteres'),
    check('lastname')
        .notEmpty().withMessage('Tienes que escribir el apellido').isLength({min:2}).withMessage('Debe tener mas de dos caracteres'),
    check('email')
        .notEmpty().withMessage('Tienes que escribir un correo electrónico').bail()
        .isEmail().withMessage('Tienes que escribir un mail válido')
        .custom(async (email) => {
            const existingUser =
                await db.User.findAll({
                    where: {email: email}
                })
                console.log(typeof existingUser);
            if (existingUser.length>0) {
                throw new Error('Email ya registrado, utilice otro')
            }
        }),    
    check('password')
        .notEmpty().withMessage('Tienes que escribir una contraseña').isLength({ min: 8 }).withMessage('La contraseña debe tener al menos 8 caracteres'),
    check('interviewer')
        .notEmpty().withMessage('Tienes que escribir el nombre del entrevistador').isLength({min:2}).withMessage('Debe tener mas de dos caracteres')

]
module.exports = validateRegister;