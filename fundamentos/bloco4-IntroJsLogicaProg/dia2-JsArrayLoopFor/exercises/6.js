let numbers = [5, 9, 3, 19, 70, 8, 100, 2, 35, 27];
let impares = 0;

for (let i of numbers) {
  if (i % 2 != 0) {
    impares++; 
  };
};

if (impares > 0) {
  console.log(`${impares} valores ímpares`);
} else {
  console.log(`nenhum valor ímpar encontrado`);
};
