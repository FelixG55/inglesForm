function adminMiddelware (req,res,next){

    if (!req.session.userLogged){
        return res.redirect('/logout');
    }else if (req.session.userLogged && req.session.userLogged.admin ==1) {
       
        next();
    }else if (req.session.userLogged && req.session.userLogged.admin !=1) {
        return res.redirect('/form')    
    }

}

module.exports = adminMiddelware;