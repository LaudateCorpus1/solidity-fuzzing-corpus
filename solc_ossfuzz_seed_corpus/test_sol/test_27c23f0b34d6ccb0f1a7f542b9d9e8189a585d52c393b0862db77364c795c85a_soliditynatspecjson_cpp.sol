contract test {
	/// @dev Multiplies a number by 7 and adds second parameter
	/// @param a Documentation for the first parameter
	/// @param not_existing Documentation for the second parameter
	function mul(uint a, uint second) public returns (uint d) { return a * 7 + second; }
}
