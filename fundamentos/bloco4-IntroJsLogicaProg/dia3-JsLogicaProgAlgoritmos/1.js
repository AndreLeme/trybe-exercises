let n = 10;

// [REQUISITO do exercicio] Primeiro verificar se n > 1
if (n > 1) {
  let asteriscos = "**";

  // Se (n > 2) adicionar asteriscos equivalentes as linhas
  if (n > 2) {
    
    for (let totalAsteriscos = 3; totalAsteriscos <= n; totalAsteriscos += 1){
      asteriscos += `*`
    };
  };
  
  // Imprimir as linhas
  for (let linhas = 1; linhas <= n; linhas += 1) {
    console.log(`${asteriscos}`);      
  };
 
} else {
  console.log(`Número de linhas tem que ser maior que 1`);
};
