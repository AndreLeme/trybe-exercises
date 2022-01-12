const tipoNumero = (num) => {
  if (typeof num !== 'number') return 'Parâmetro precisa ser do tipo Number'
  if (num > 0) return 'positivo';
  if (num < 0) return 'negativo';
  if (num === 0) return 'neutro';
};

module.exports = {
  tipoNumero,
};
