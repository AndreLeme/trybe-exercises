let a = 7;
let b = 77;
let c = 777;

if ((a > b && a > c) || (a > b && a == c) || (a > c && a == b)) {
  console.log(a);
} else if ((b > a && b > c) || (b > a && b == c) || (b > c && b == a)) {
  console.log(b);
} else if ((c > a && c > b) || (c > a && c == b) || (c > b && c == a)) {
  console.log(c);
} else {
  console.log("Números iguais");
}
