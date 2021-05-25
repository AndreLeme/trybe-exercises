let teste = [2, 4, 6, 7, 10, 0, -3];

function indiceMenor(array) {
    let indiceMenor = array[0];

  for (let i in array) {
    if (array[i] < indiceMenor) {
      indiceMenor = i;
    }
  }
  return indiceMenor;
};

console.log(indiceMenor(teste));
