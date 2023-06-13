// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyStorage {
    uint a;
    uint b;
    uint c;
    string  d;

    function setA(uint _number) public {
        a = _number;
    }
    function setB(uint _number) public {
        b = _number;
    }
    function setC(uint _number) public {
        c = _number;
    }
    function setD(string memory newString) public  {
        d = newString;
    }

    function getA() public view returns(uint)  {
        return a;
    }
    function getB() public view returns(uint)  {
        return b;
    }
    function getC() public view returns(uint)  {
        return c;
    }
    function getD() public view returns(string memory)  {
        return d;
    }

}