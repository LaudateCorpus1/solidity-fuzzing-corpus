		contract c {
			fallback() external { data = msg.data; }
			function del() public returns (bool) { delete data; return true; }
			bytes data;
		}
