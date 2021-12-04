let teste = [2, 3, 6, 7, 10, 1];

function indiceMaior(array) {
    let indiceMaior = array[0];
    // usando valor presente em array invés de "indiceMaior = 0", pra evitar erro caso todos os valores em array sejam negativos

  for (let i in array) {
    if (array[i] > indiceMaior) {
      indiceMaior = i;
    }
  }
  return indiceMaior;
};

console.log(indiceMaior(teste));
