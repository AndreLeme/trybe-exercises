const fs = require('fs/promises');

const getSimpsons = () => {
  return fs.readFile('./simpsons.json', 'utf8')
    .then(content => JSON.parse(content));
};

const setSimpsons = (simpsons) => fs.writeFile('./simpsons.json', JSON.stringify(simpsons));

module.exports = {
  getSimpsons,
  setSimpsons,
};
