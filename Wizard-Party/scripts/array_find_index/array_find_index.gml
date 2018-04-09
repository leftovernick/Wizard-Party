// @param value
// @param array

var _value = argument0;
var _array = argument1;
var _array_size = array_length_1d(_array)
var _i = 0;

// Look for value
repeat (_array_size) {
	if _array[_i] == _value {
		return _i;
	} else {
		_i++;
	}
}

return -1;