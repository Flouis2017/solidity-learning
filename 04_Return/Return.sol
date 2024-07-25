// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Return {

    // 返回（输出）多个变量
    function returnMutiple() public pure returns (int, string memory, int[3] memory) {
        return (1, "solidity", [int(1995), 12, 10]);
    }

}
