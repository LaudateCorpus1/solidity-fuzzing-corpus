pragma abicoder               v2;

// tests encoding from storage arrays

contract C {
uint256[2][] tmp_h;
function h(uint256[2][] calldata s) external returns (bytes memory) {
    tmp_h = s;
    return abi.encode(tmp_h);
}
uint256[2][2] tmp_i;
function i(uint256[2][2] calldata s) external returns (bytes memory) {
    tmp_i = s;
    return abi.encode(tmp_i);
}
}
// ====
// EVMVersion: >homestead
// compileViaYul: also
// ----
// h(uint256[2][]): 0x20, 3, 123, 124, 223, 224, 323, 324 -> 32, 256, 0x20, 3, 123, 124, 223, 224, 323, 324
// gas irOptimized: 172712
// gas legacy: 175929
// gas legacyOptimized: 172504
// i(uint256[2][2]): 123, 124, 223, 224 -> 32, 128, 123, 124, 223, 224
// gas irOptimized: 107681
// gas legacy: 109868
// gas legacyOptimized: 107388
