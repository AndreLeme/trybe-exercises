const connection = require('./connection');

// Note que não realizamos destructuring da senha, pois não precisaremos dela
// Note, também, que renomeamos os campos fist_name e last_name para firstName e lastName, respectivamente
const formatUser = ({ id, first_name: firstName, last_name: lastName, email }) => {
  // A única coisa que precisamos fazer agora é criar um objeto com os nomes dos campos alterados
        // e sem o campo passowrd
  return {
    id,
    firstName,
    lastName,
    email,
  };
}

const addUser = async (firstName, lastName, email, password) => {
  const [user] = await connection.execute('INSERT INTO ')
}