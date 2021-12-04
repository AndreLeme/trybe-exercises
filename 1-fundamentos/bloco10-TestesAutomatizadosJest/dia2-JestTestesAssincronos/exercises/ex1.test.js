const uppercase = (str, callback) => {
  callback(str.toUpperCase());
};

test('verifique a chamada do callback de uma função uppercase, que transforma as letras de uma palavra em letras maiúsculas', async () => {  
  try {
    await uppercase('teste', (str) => expect(str).toBe('TESTE'));
  } catch (error) {
    expect(error).toEqual({ error: 'Falhou em transformar as letras de uma palavra em letras maiúsculas' });
  }
});