function guestMiddelware (req,res,next){

    if (req.session.userLogged){

        return res.redirect('/logout');
    }

    next();
}

module.exports = guestMiddelware;