var a = 1;
typeof(a);
var b = new Number(5);
typeof(b);
console.log(a+b);
var name = 'Badie';
var famille = "Sakka";
var adresse = `37 Rue Moncef Bey 5100 ${a} Mahdia`;
var gender = new String("Homme");
console.log(adresse);
typeof(name);
typeof(famille);
typeof(adresse);
typeof(gender);
var isOpen = true;
typeof(isOpen);
function f(x){return 2*x;}
typeof(f);
var tableau = [];
var tableau2=new Array();
typeof(tableau);
typeof(tableau2);
true == 1;
true ===1;
false == false;
1 !== 1;
true || false;
false && true;
Math.sin(4);


for(var i=1;i<10;i++){
  console.log(i);
}
console.log();

var t=[1,2,3,4,8,9];
for (var it of t){
  console.log(it);
}
var predicat=false;
if (predicat){
  console.log("branch if true");
}
else{
  console.log("branch if false");
}
 var choix = 1;
switch(choix){
  case 1:{console.log('one');break;}
  case 2:{console.log('two');break;}
}

function sym(args){
  console.log("simping");
  return(args);
}
sym();
var double = function(args){
  console.log("double");
}
double(5);
var double_prime=double;
double_prime();

var pc= {
  processor:"Intel i7",
  ram:"16 GB",
  toString:function(){
    return `PC : ${this.processor} with ram:${this.ram}`;}
}
console.log(pc);
pc.processor;
pc.toString();
typeof(pc);
