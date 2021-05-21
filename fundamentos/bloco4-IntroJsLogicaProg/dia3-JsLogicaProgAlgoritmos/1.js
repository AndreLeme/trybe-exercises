let n = 5;
let ast = "**";

//[REQUISITO do exercicio] Verificar se n > 1
if (n > 1) {

  //Se n > 2 adicionar asteriscos equivalentes nas linhas
  if (n > 2) {
    for (let i = 3; i <= n; i +=1){
      ast += `*`
    };
  };
  
  //imprimir as linhas  
  for (let i = 1; i <= n; i += 1) {
    console.log(`${ast}`);      
  };    
};
