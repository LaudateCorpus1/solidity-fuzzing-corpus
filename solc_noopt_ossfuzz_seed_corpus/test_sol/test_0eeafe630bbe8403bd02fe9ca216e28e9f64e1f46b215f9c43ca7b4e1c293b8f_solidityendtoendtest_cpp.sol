		pragma experimental ABIEncoderV2;
		contract C {
			struct S { uint256 a; uint256 b; }
			function f(S[] calldata s) external pure returns (uint256 l, uint256 a, uint256 b, uint256 c, uint256 d) {
				S[] memory m = s;
				l = m.length;
				a = m[0].a;
				b = m[0].b;
				c = m[1].a;
				d = m[1].b;
			}
		}
