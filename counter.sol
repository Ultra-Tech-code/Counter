//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract examole{
    //Create a state variable called count that keep tracks of our count
    uint count;

    //Create a state variable called timeframe that keep store the current time + 30seconds
    uint timeframe = block.timestamp + 30 seconds;

    //create a modifier statement that verifies if our current time is less than our timeframe
    modifier timer{
        require(block.timestamp <= timeframe, "time has elapsed");
        _;
    }
    //This is a function add that increment our count by 1
    function add() public  timer{
        count++;
    }
    //This is a function decrement that decrease our count by 1
    function decrement() public timer{
        count--;
    }
    //This is a function that gives us the total count we are able to make before the time elapse
    function getCount() public view returns(uint){
        return count;
    }
}