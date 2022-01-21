const express = require('express');
const rescue = require('express-rescue');
const app = express();
const PORT = 3000;

const Author = require('./models/Author');
const Book = require('./models/Book');

app.get('/authors/:id', rescue(async (req, res) => {
  const { id } = req.params;
  const author = await Author.findById(id);

  if (!author) return res.status(404).json({ message: 'Not found' });

  res.status(200).json(author);
}))

app.get('/authors', rescue(async (_req, res) => {
  const authors = await Author.getAll();

  res.status(200).json(authors);
}));

app.get('/books', rescue(async (req, res) => {
  const { author_id } = req.query;

  const books = (author_id)
  ? await Book.getByAuthorId(author_id)
  : await Book.getAll();

  res.status(200).json(books);
}))

app.post('/user', rescue(async (req, res) =>{
  const { firstName, lastName, email, password } = req.query;
}))

app.use((err, _req, res, _next) => {
  console.error(err);
  res.status(500).json({ message: 'Erro ao processar requisição' });
})

app.listen(PORT, () => console.log(`Listening on port ${PORT}`));
