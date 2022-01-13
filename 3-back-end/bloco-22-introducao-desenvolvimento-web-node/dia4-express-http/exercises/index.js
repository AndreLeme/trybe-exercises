const express = require('express');
const bodyParser = require('body-parser');
const rescue = require('express-rescue');

const simpsonsUtils = require('./fs');

const app = express();
app.use(bodyParser.json());

// exer 1
app.get('/ping', (_req, res) => {
  res.status(200).json({ message: 'pong' });
});

// exer 2
app.post('/hello', (req, res) => {
  const { name } = req.body;
  res.status(200).json({ message: `Hello, ${name}!` });
});

// exer 3
app.post('/greetings', (req, res) => {
  const { name, age } = req.body;

  if (parseInt(age, 10) <= 17) {
    return res.status(401).json({ message: 'Unauthorized' });
  };

  res.status(200).json({ message: `Hello, ${name}!` });
});

// exer 4
app.put('/users/:name/:age', (req, res) => {
  const { name, age } = req.params;

  res.status(200).json({ message: `Seu nome é ${name} e você tem ${age} anos de idade`})
});

// exer 5
app.post(
  '/simpsons',
  rescue(async (req,res) => {
    const { id, name } = req.body;

    const simpsons = await simpsonsUtils
  }))