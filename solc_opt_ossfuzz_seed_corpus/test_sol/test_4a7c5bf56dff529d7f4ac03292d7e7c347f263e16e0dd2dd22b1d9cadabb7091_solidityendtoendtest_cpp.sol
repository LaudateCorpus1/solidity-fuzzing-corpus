		contract C {
			function f(address a) public returns (uint) {
				if (a != 0x1234567890123456789012345678901234567890) return 1;
				return 0;
			}
			function g(address payable a) public returns (uint) {
				if (a != 0x1234567890123456789012345678901234567890) return 1;
				return 0;
			}
		}
