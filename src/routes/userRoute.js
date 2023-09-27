const { Router } = require('express');
const express = require('express');
const { register, login, writeFormRegister, writeFormLogin, logout } = require('../controllers/usersController');
const routerUser = express.Router();
const validationsReg = require('../middleware/validateRegister')
const validationLog = require('../middleware/validateLogin')
const guestMiddelware = require('../middleware/guestMiddelware')


routerUser.get('/register',guestMiddelware, register);
routerUser.post('/register',validationsReg, writeFormRegister);


routerUser.get('/',guestMiddelware, login);
routerUser.post('/login',validationLog,writeFormLogin);

routerUser.get('/logout/',logout)


module.exports = routerUser;