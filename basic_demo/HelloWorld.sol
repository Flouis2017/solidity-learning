// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract HelloWorld {

    string public str = "Hello World";

    // string str2 = "Hello Tom";
    string internal str2 = "Hello Tom";

    function helloWorld() public view returns (string memory) {
        return str2;
    }

}