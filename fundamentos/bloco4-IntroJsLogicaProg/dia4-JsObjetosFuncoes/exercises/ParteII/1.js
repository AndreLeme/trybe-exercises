function palindromo (palavra) {
  let contrario = palavra.split("").reverse().join("");
  if (contrario === palavra) {
    return true;
  } else {
    return false;
  };
};

console.log(palindromo('arara'));
console.log(palindromo('desenvolvimento'));