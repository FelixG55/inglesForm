const express= require('express');

const {index, postForm, form, editForm, showEditForm, adminView, showResultsView} = require ('../controllers/mainController');
const uploadProductFile = require('../middleware/multerForm.js');
const routerMain = express.Router();
const adminMiddelware = require('../middleware/adminMiddelware')
const validateForm = require('../middleware/validateForm')

routerMain.get ('/form', index);
routerMain.post('/postForm',postForm)

routerMain.get('/adminView',adminMiddelware, adminView)

routerMain.get('/editForm',showEditForm)
routerMain.put('/editForm', editForm)

routerMain.get('/resultsView', showResultsView);


module.exports = routerMain;




