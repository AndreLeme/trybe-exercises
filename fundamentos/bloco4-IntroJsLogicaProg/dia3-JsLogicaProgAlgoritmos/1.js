let linhas = 2;
let asteriscos = "**";

//[REQUISITO do exercicio] Verificar se n > 1
if (linhas > 1) {

  //Se linhas > 2 adicionar asteriscos equivalentes as linhas
  if (linhas > 2) {
    for (let totalAsteriscos = 3; totalAsteriscos <= linhas; totalAsteriscos +=1){
      asteriscos += `*`
    };
  };
  
  //imprimir as linhas  
  for (let i = 1; i <= linhas; i += 1) {
    console.log(`${asteriscos}`);      
  };    
} else {
  console.log(`Número de linhas tem que ser maior que 1`);
};
