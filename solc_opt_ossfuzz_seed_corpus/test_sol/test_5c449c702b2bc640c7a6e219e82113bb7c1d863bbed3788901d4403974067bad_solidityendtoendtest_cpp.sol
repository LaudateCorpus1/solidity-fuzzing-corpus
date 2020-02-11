		contract C {
			function diff() public pure returns (uint remainder) {
				bytes memory a = type(D).creationCode;
				bytes memory b = type(D).runtimeCode;
				assembly { remainder := mod(sub(b, a), 0x20) }
			}
		}
		contract D {
			function f() public pure returns (uint) { return 7; }
		}
