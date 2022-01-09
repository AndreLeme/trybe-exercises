const imcCalculation = (weight, height) => {
  const imc = (weight / (height ** 2)).toFixed(2);

  let situation = '';
  if (imc < 18,5) situation = 'Abaixo do peso (magreza)';
  if (imc < 25) situation = 'Peso normal';
  if (imc < 30) situation = 'Acima do peso (sobrepeso)';
  if (imc < 35) situation = 'Obesidade grau I';
  if (imc < 40) situation = 'Obesidade grau II';
  if (imc >= 40) situation = 'Obesidade graus III e IV';

  return `${imc}. ${situation}`;
}

module.exports = {
  imcCalculation,
}