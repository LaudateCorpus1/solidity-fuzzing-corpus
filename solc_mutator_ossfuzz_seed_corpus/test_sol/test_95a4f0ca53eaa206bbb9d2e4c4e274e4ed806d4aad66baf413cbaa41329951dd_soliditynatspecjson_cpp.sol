contract test {
	/// @dev Multiplies a number by 7 and adds second parameter
	/// @param a Documentation for the first parameter starts here.
	/// Since it's a really complicated parameter we need 2 lines
	/// @param second Documentation for the second parameter
	/// @return d The result of the multiplication
	/// @return f And cookies with nutella
	function mul(uint a, uint second) public returns (uint d, uint f) {
		uint mul = a * 7;
		return (mul, second);
	}
}
