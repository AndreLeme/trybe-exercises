const math = require('./math')
jest.mock('./math');

test('chamada subtrair', () => {
  // math.subtrair = jest.fn(); // devido a linha 2, todas as funções já foram mockadas

  math.subtrair();
  expect(math.subtrair).toHaveBeenCalled();
});

test('multiplicar', () => {
  // math.multiplicar = jest.fn() // devido a linha 2, todas as funções já foram mockadas
    
  math.multiplicar.mockReturnValue(10);

  math.multiplicar();
  expect(math.multiplicar).toHaveBeenCalled();
  expect(math.multiplicar()).toBe(10);
});

test('somar', () => {
  const mockSomar = jest.spyOn(math, 'somar');

  mockSomar.mockResolvedValue(4);
  
  mockSomar(1, 3);

  expect(mockSomar).toHaveBeenCalled();
  expect(mockSomar).toHaveBeenCalledWith(1, 3);
  expect(mockSomar(1, 3)).resolves.toBe(4);
});

// test('dividir', () => {    
//   // math.dividir
//   // .mockReturnValue(15)
//   // .mockReturnValueOnce(2)
//   // .mockReturnValueOnce(5);

//   math.dividir();
//   expect(math.dividir).toHaveBeenCalled();
//   expect(math.dividir(30, 2)).resolves.toBe(15);
//   // expect(math.dividir).toHaveBeenCalledWith
// });