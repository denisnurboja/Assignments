// create a function that will greet a person,
// and assign the function to the `greet` variable
var greet = function (person, message) {
  var greeting = 'Hello, ' + person + '!';
  console.log(greeting + ' ' + message);
};

// use the function to greet Jory, passing in her
// name and the message we want to use
greet('Jory', 'Welcome to JavaScript');

// use the function to greet Rebecca, passing in her
// name and a different message
greet('Rebecca', 'Thanks for joining us');

// create a function to add two numbers together
var addTwoNumbers = function (a, b) {
  return a + b;
};

console.log(addTwoNumbers(100, 3));

// demonstration of variable scope
var foo = 'qux';
var myFunction = function () {
  var foo = 'bar';
};

console.log(foo); // logs 'qux'
myFunction();
console.log(foo); // still logs 'qux'

// Javascript objects
var person = {
  firstName: 'Boaz',
  lastName: 'Sender',
  greet : function() {
    console.log( 'Hi, ' + this.firstName );
  }
};

person.firstName = 'Ben';
person.lastName = 'Alman';

console.log('First name: ' + person.firstName); // dot notation
console.log('Last name: ' + person['lastName']); // bracket notation
person.greet();

// Iterating over an array
var myArray = [ 'a', 'b', 'c' ];
var i;
var len = myArray.length;

// we'll use the variable i as our index; it starts at 0,
// and we increment it by 1 (using i++) until i is no longer
// less than the length of the array
for (i = 0; i < len; i = i + 1) {
  console.log( 'item at index ' + i + ' is ' + myArray[ i ] );
}
