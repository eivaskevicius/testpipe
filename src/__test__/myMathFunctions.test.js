const myMathFunctions = require('../server/files/myMathFunctions.js');

//tests for sum
test('adds 1 + 2 to equal 3', () => {
    expect(myMathFunctions.sum(1, 2)).toBe(3);
});

test('adding not numbers throws exception', () => {
    expect(() => {myMathFunctions.sum(1, "5")}).toThrow(TypeError);
});

//tests for isANumber
test('proves 5 to be number', () => {
    expect(myMathFunctions.isANumber(5)).toBeTruthy();
});

test('proves NaN is not a number', () => {
    expect(myMathFunctions.isANumber(NaN)).not.toBeTruthy();
});

test('proves "test" is not a number', () => {
    expect(myMathFunctions.isANumber("test")).not.toBeTruthy();
});

//tests for mult

//tests for division

