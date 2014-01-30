// Problem 1: Multiples of 3 and 5
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000

var multiples = function(exclusiveUpperBound) {
	var evenNumbers = [];
	for (i = 1; i < exclusiveUpperBound; i++) {
		if (i % 3 === 0 || i % 5 === 0) {
			evenNumbers.push(i);
		}
	}
	var result = 0
	for (i in evenNumbers) {
		result += evenNumbers[i];
	}
	return result;
}
console.log(multiples(1000))

// 233168 
