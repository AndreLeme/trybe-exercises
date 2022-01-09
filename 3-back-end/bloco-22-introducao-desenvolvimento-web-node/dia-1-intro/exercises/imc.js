let weight = 70;
let height = 1.70;

const imcCalculation = () => (weight / (height ** 2)).toFixed(2);

module.exports = {
  imcCalculation,
}