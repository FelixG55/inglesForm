const express = require('express');
const path = require('path');
const session = require('express-session');
const methodOverride =  require('method-override');

const port = process.env.PORT || 3001
const app = express();

const routerMain = require ('./routes/mainRoute');
const routerUser = require('./routes/userRoute');

app.use(express.static('public'));
app.use(express.urlencoded({ extended: false }));
app.use(methodOverride('_method'));
app.use(session({
    secret: 'Mensaje super secreto',
    resave: false,
    saveUninitialized: false
}));

app.set('view engine','ejs');

app.use(routerMain);
app.use(routerUser);


app.listen(port, () => console.log(`Respondiendo en el puerto ${port}`));

