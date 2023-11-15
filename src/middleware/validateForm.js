const { check } = require('express-validator');
const db = require('../database/models');

// Realiza la consulta a la base de datos y luego construye las reglas de validación
module.exports = async () => {
  const preguntas = await db.Pregunta.findAll();
  const totalPreguntas = preguntas.length;

  const validateForm = [];

  for (let i = 0; i < totalPreguntas; i++) {
    validateForm.push(
      check(`pregunta${i + 1}`).notEmpty().withMessage('You have to answer this question')
    );
  }

  return validateForm;
};

