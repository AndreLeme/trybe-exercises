const main = () => {
  const { question, questionInt } = require('readline-sync');
  
  const name = question('Qual seu nome?\n');
  const age = questionInt('Qual sua idade? ');
  
  console.log(`Hello, ${name}! You are ${age} years old!`);
}

main();
