// 1

const checkNumbers = async (num1, num2, num3) => {
  try {

  } catch (err) {

  }

  
    if (num1 != Number || num2 != Number || num3 != Number) 
     return new Error('Informe apenas números');

    const result = (num1 + num2) * num3;
    if (result < 50) return new Error('Valor muito baixo');

    resolve(result);  

  return promise;
};


fazer outra funcao que chama checkNumbers

