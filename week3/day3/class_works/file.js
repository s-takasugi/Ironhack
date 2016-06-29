// var exampleArray = [2, -5, 10, 5, 4, -10, 0];
//
// function process(array){
//   var result = [];
//   array.forEach(function(number1, index1){
//     array.forEach(function(number2, index2){
//       if (number1 + number2 == 0){
//         result.push(index1.toString() + ',' + index2.toString())
//       }
//     })
//   })
// return result
// }
//
// // same result for both ways
//
// function process(){
//   var result = [];
//   exampleArray.forEach(function(number1, index1){
//     exampleArray.forEach(function(number2, index2){
//       if (number1 + number2 == 0){
//         result.push(index1.toString() + ',' + index2.toString())
//       }
//     })
//   })
// return result
// }
//
// console.log(process(exampleArray));


// var string = '80:70:90:100';
//
// function avg(string){
//   var numbers_string = string.split(':');
//   var total = numbers_string.reduce(function(sum, num){
//     return parseInt(sum) + parseInt(num);
//   })
//
// return total/ numbers_string.length;
// }
//
// console.log(avg(string))

// var splitArray(){
//   numbers.split(':')
//   return splitArray(numbers)
// };
//
// var added_number(){
//   splitArray.forEach(number, i){
//     'addition??'
//     return added_number(splitArray)
//   }
// };
//
// var averageColon(){
//   added_number.
// }

// averageColon(numbers);
// => 85


function checkInPassenger(name, customersArray) {
	// var passengerChecked;
	for (var i = 0; i<customersArray.length; i++) {
		if (customersArray[i] == name) {
			// passengerChecked =
      return function() {
        console.log ("Hi, " + name + "You’re passenger #" + (i+1));
      };
    }
  }
// return passengerChecked;
}

var flightToBali = ["Wayan", "Putu", "Gede", "Ni Luh", "Nyoman"];
var counterCheckIn = checkInPassenger("Gede", flightToBali);
counterCheckIn();
