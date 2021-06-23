const wakeUp = () => 'Acordando!!';

const tomarCafe = () => 'Bora tomar café!!';

const dormir = () => 'Partiu dormir!!';

const doingThings = (func) => console.log(func());

// Ao chamar a função doingThings:
doingThings(tomarCafe);

// Ela deve retornar o valor do respectivo parâmetro, neste caso:
// Acordando!!