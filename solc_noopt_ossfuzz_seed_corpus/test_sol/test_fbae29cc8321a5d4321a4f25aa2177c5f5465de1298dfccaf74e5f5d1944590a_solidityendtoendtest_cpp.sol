		pragma experimental ABIEncoderV2;
		contract C {
			function f(uint[2] calldata s) external pure returns (uint256 a, uint256 b) {
				a = s[0];
				b = s[1];
			}
		}
