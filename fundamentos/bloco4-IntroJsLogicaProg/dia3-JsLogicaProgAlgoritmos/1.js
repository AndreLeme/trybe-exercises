let linhas = 8;
let ast = "**";

//[REQUISITO do exercicio] Verificar se n > 1
if (linhas > 1) {

  //Se linhas > 2 adicionar asteriscos equivalentes as linhas
  if (linhas > 2) {
    for (let totalAsteriscos = 3; totalAsteriscos <= linhas; totalAsteriscos +=1){
      ast += `*`
    };
  };
  
  //imprimir as linhas  
  for (let i = 1; i <= linhas; i += 1) {
    console.log(`${ast}`);      
  };    
} else {
  console.log(`Número de linhas tem que ser maior que 1`);
};
