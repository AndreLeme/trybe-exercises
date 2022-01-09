const imcCalculation = (weight, height) =>
  (weight / (height ** 2)).toFixed(2);

module.exports = {
  imcCalculation,
}