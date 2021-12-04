let teste = ['José', 'Lucas', 'Nádia', 'Fernanda', 'Cairo', 'Joana']; 


function maisCaracteres(array) {
  a => a.sort((a,b) => b.length - a.length)[0];
};
var longest = arr.reduce(
  function (a, b) {
      return a.length > b.length ? a : b;
  }
);

// function maisCaracteres(array) {
//   a => a.sort((a,b) => b.length - a.length)[0];
// };

console.log(maisCaracteres(teste));