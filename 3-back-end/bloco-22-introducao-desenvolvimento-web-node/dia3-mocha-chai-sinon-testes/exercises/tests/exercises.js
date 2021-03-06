const { expect } = require('chai');

const { tipoNumero } = require('../exercises');

describe('Recebe número como parâmetro:', () => {
  describe('Quando número for maior que 0, a resposta', () => {
    it('é uma string', () => {
      const resposta = tipoNumero(5);

      expect(resposta).to.be.a('string');
    });
    
    it('retorna "positivo"', () => {
      const resposta = tipoNumero(5);

      expect(resposta).to.be.equal('positivo');
    });
  });

  describe('Quando número for menor que 0', () => {
    it('é uma string', () => {
      const resposta = tipoNumero(-3);

      expect(resposta).to.be.a('string');
    });

    it('retorna "negativo"', () => {
      const resposta = tipoNumero(-3);

      expect(resposta).to.be.equal('negativo');
    });
  });

  describe('Quando número for igual a 0', () => {
    it('é uma string', () => {
      const resposta = tipoNumero(0);

      expect(resposta).to.be.a('string');
    });

    it('retorna "neutro"', () => {
      const resposta = tipoNumero(0);

      expect(resposta).to.be.equal('neutro');
    });
  });
});

describe('Parâmetro recebido não for número, a resposta:', () => {
  it('é uma string', () => {
    const resposta = tipoNumero('ABC');

    expect(resposta).to.be.a('string');
  });

  it('retorna "Parâmetro precisa ser do tipo Number"', () => {
    const resposta = tipoNumero('ABC');

    expect(resposta).to.be.equal('Parâmetro precisa ser do tipo Number');
  });
});
