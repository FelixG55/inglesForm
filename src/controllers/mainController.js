const path = require('path');
const db = require('../database/models');
const { log } = require('console');
const sequelize = db.sequelize;

const index = (req, res) => {
    let profile = req.session.userLogged;
    db.Pregunta.findAll({     
    })
    .then(preguntas => {
        db.Respuesta.findAll({      
        }).then(respuestas =>{
            db.Pregunta.findOne({
                attributes: [
                    [sequelize.fn('max', sequelize.col('passage')), 'max_passage']
                  ]
            }).then(maxPassage =>{
                
                db.Pregunta.findOne({
                    attributes: [
                        [sequelize.fn('max', sequelize.col('situation')), 'max_situation']
                      ]
                }).then(maxSituation => {

                    res.render(path.join(__dirname, '../views/index'),({preguntas,respuestas,maxPassage,maxSituation,profile,style: "styles-index"}));
                })
            })
        })
    })  
};

const postForm = (req, res) => {

    let profile = req.session.userLogged;
    db.Respuesta.findAll(
        {where:{respuestaCorrecta:1}}
    ).then(respuestasCorrectas =>{
        
        respuestas = Object.values(req.body)
        let totalCorrectas = 0;
        respuestas.forEach(e => {
            respuestasCorrectas.forEach(u =>{
                if (e == u.respuesta) {
                    totalCorrectas++
                }
            })
        });
        db.Resultado.create({
            resultado: totalCorrectas,
            email: profile.email,
            nombre: profile.name,
            apellido: profile.lastname,
            interviewer: profile.interviewer,
            cedula: profile.password
        })
        res.render(path.join(__dirname, '../views/final'),{totalCorrectas, profile})
    })
};

const adminView = (req, res) => {

    res.render(path.join(__dirname, '../views/admin'),({style:'style-admin'}))
}

const showEditForm = (req,res) => {

    db.Pregunta.findAll({     
    })
    .then(preguntas => {
        db.Respuesta.findAll({      
        }).then(respuestas =>{
            db.Pregunta.findOne({
                attributes: [
                    [sequelize.fn('max', sequelize.col('passage')), 'max_passage']
                  ]
            }).then(maxPassage =>{
                
                db.Pregunta.findOne({
                    attributes: [
                        [sequelize.fn('max', sequelize.col('situation')), 'max_situation']
                      ]
                }).then(maxSituation => {

                    res.render(path.join(__dirname, '../views/formEdit'),({preguntas,respuestas,maxPassage,maxSituation,style: "styles-index"}));
                })
            })
        })
    })  
}

const editForm = (req,res) =>{
    let a =   Object.entries(req.body)
        for (let i = 0; i < a.length; i++) {
            for (let j = 0; j < a.length; j++) {
                let p = a[i][0]
                let respValue = a[i][1]
                if (p == `respuesta${j+1}` && Array.isArray(respValue) == false) {
                db.Respuesta.update(
                    {
                        respuesta: respValue
                    },
                    {
                        where: {id: j+1}
                    })
                }else if (p == `respuesta${j+1}` && Array.isArray(respValue) == true) {
                    db.Respuesta.update(
                    {
                        respuesta: respValue[1]
                    },
                    {
                         where: {id: j+1}
                    })
                }else if (p == `pregunta${j+1}`) {
                    db.Pregunta.update(
                        {
                            pregunta: respValue
                        },
                        {
                             where: {id: j+1}
                        })
                }
            }
        }
        res.redirect('/editForm')
}

const showResultsView = (req, res) =>{

    db.Resultado.findAll({
    }).then(resultados =>{
        res.render(path.join(__dirname, '../views/results.ejs'),({resultados, style: "styles-results"}))
    })

}

module.exports = {
    index,
    postForm,
    adminView,
    showEditForm, 
    editForm,
    showResultsView
    };
