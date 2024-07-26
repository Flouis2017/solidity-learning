// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// import "https://github.com/Arachnid/solidity-stringutils/blob/master/src/strings.sol";

contract Return {

    // 返回（输出）多个变量
    function returnMutiple() external pure returns (int, string memory, int[3] memory) {
        return (1, "solidity", [int(1995), 12, 10]);
    }

    // 命名式返回
    function returnNamed() external pure returns (int x) {
        x = 100;
    }

    function returnNamed2() external pure returns (string memory name, int age, int gender) {
        // string memory familyName = "Lin";
        // string memory firstName = "Tom ";
        name = "Tom";
        age = 30;
        gender = 1;
    }

}
