// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.7.0;
// This will not compile
contract C {
    function f() pure public returns (uint) {
        x = 2;
        uint x;
        return x;
    }
}

