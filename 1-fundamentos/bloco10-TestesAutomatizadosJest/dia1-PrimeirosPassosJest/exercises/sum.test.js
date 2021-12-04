const { test, describe, expect } = require('jest-circus');
const sum = require('./sum')

describe('Testes da função sum', () => {
  test('se o retorno de sum(4, 5) é 9', () => {
    expect(9).toEqual(sum(4, 5));
  });

  test('se o retorno de sum(0, 0) é 0', () => {
    expect(sum(0, 0)).toEqual(0);
  });

  test('se a função sum lança um erro quando os parâmetros são 4 e "5" (string 5)', () => {
    expect(() => {
      sum(4, "5");}).toThrow();
  });

  test('se a mensagem de erro é "parameters must be numbers" quando realizar a chamada sum(4, "5")', () => {
    expect(() => {
      sum(4, "5");}).toThrow('parameters must be numbers');
  });
});
