function sum(a, b) {
    if (!isANumber(a) | !isANumber(b)) {
        throw new TypeError(
            'sum(): Both arguments must be numbers. Got: "' + a + '" and "' + b + '"'
        );
    }
    return a + b;
};

function isANumber(nr) {
    if (!(typeof nr === 'number' && !isNaN(nr))) {
        return false;
    } 
    return true; 
}

exports.sum = sum;
exports.isANumber = isANumber;