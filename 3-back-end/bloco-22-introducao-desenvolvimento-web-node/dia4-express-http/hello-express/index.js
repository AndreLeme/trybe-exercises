const express = require('express');
const rescue = require('express-rescue');
const errorMiddleware = require('./errorMiddleware');
const bodyParser = require('body-parser');
const { verifiedEmail, verifiedPassword, verifiedUsername } = require('./register');

const app = express();
app.use(bodyParser.json());

app.get('/:fileName', [
  rescue(async (req, res) => {
    const file = await fs.readFile(`./${req.params.fileName}`);
    res.send(file.toString('utf-8'));
  }),
  (err, req, res, next) => {
    if (err.code === 'ENOENT') {
      const newError = new Error(err.message);
      newError.code = 'file_not_found';
      newError.status = 404;
      return next(newError);
    }

    return next(err);
  },
]);

app.get(
  './user/register',
  verifiedEmail,
  verifiedPassword,
  verifiedUsername,
  (_req, res) => res.status(201).json({ message: 'user created' }),
);

app.use(errorMiddleware);
