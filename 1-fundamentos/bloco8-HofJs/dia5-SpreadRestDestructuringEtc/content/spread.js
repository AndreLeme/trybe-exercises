// Faça uma lista com as suas frutas favoritas
const specialFruit = ['banana', 'mamão', 'abacate'];

// Faça uma lista de complementos que você gostaria de adicionar
const additionalItens = ['sustagem', 'canela', 'mel'];

// faça a função retornar uma lista única contendo todos os itens da nossa salada de frutas usando o spread
const fruitSalad = (fruit, additional) => [...fruit, ...additional];
  
console.log(fruitSalad(specialFruit, additionalItens));