//creating object

// var person = {
// } //more preferable
// person['name'] = 'Thor'
//
// var person2 = new Object()
//
// person2.name = 'Matias'
//
// person.sayHi = function(){console.log('Hi, my name is ' + this.name)}
// // this => person (content of the object)
//
// person.sayHi();

var Person = function(name){
  this.name = name;
//  this.sayHi = function(){console.log('Hi, I\'m ' + this.name )}
}

Person.prototype.sayHi =
function(){console.log('Hi, I\'m ' + this.name )}

var thor = new Person('Thor');
// var matias = new Person('Matias')

// thor.sayHi();

var TA = function(name){
  Person.call(this, name);
}

TA.prototype = new Person('');

var matias = new TA('Matias');

// console.log(matias.constructor.prototype);
// matias.sayHi()

// console.log(thor.constructor.prototype);

// cosole.log(Object.keys(thor))

// for(var property in thor) {
//   console.log(property)
// }
