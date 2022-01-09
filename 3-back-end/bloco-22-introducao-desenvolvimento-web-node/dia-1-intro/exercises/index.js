const main = () => {
  const { questionFloat } = require('readline-sync');
  const { imcCalculation } = require('./imc');
  
  const weight = questionFloat('Qual seu peso?\n');
  const height = questionFloat('Qual sua altura?\n');
  
  console.log(imcCalculation(weight, height));
}

main();