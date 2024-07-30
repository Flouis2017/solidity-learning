// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

/**
 * solidity不提供控制台输出，通过return将程序运行结果进行返回
 */

contract Return {

    function returnExample(string memory name) external pure returns (string memory res) {
        res = strConcat("hello ", name);
        return res;
    }

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

    function strConcat(string memory _a, string memory _b) internal pure returns (string memory){
        bytes memory _ba = bytes(_a);
        bytes memory _bb = bytes(_b);
        string memory ret = new string(_ba.length + _bb.length);
        bytes memory bret = bytes(ret);
        uint k = 0;
        for (uint i = 0; i < _ba.length; i++) bret[k++] = _ba[i];
        for (uint i = 0; i < _bb.length; i++) bret[k++] = _bb[i];
        return string(ret);
    }

}
