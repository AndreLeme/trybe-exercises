let a = 7;
let b = 77;
let operacao;

switch (operacao) {
  case "adicao":
    console.log(a + b);
    break

  case "subtracao":
    console.log(a - b);
    break

  case "multiplicacao":
    console.log(a * b);
    break

  case "divisao":
    console.log(a / b);
    break

  case "modulo":
    console.log(a % b);
    break
  
  default:
    console.log("Operação inválida");
}
