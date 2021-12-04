// Agora, um passo para trás: vamos fazer, passo a passo, uma Promise
// Primeiramente, instancie uma Promise . Dentro dela, você deve produzir um array com dez números aleatórios de 1 a 50 e elevá-los todos ao quadrado.
// Se a soma de todos esses elementos for inferior a 8000, a promise deve ser resolvida. Caso contrário, ela deve ser rejeitada.
// Acresça um then e um catch à Promise com qualquer coisa dentro só para que o código funcione.

const promise = new Promise((resolve, reject) => {
  const array = Array.from(
    { length: 10 },
    () => Math.floor(Math.random() * 49) + 1
  );
  const sum = array.map(number => number * number)
                   .reduce((total, number) => total + number);
  
  sum < 8000 ? resolve() : reject();  
})
.then(() => console.log('Resolved'))
.catch(() => console.log('Rejected'));

promise();
