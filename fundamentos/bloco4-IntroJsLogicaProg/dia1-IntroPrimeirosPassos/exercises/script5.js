let v1 = 60;
let v2 = 60;
let v3 = 60;

if (v1 <= 0 || v2 <=0 || v3 <=0){
  console.log("Os ângulos tem que ser maiores que 0");
} else if (v1 + v2 + v3 == 180) {
    console.log(true);
} else {
  console.log(false);
}
