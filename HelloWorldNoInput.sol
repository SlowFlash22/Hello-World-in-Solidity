//SPDX-License-Identifier: UNLICENSED
//since this⬆️ is our unlicensed contract

pragma solidity >=0.8.0; // defined our solidity compiler version

contract HelloWorldNoInput {
    // best practice is to use the same name of contract as file name just like Java!
    event messagechanged(string oldmsg, string newmessage); // console.log for solidity, removed during transactions, though stored on blockchain,
    // event is a "data-type", usually emitted but stored the transaction logs in blockchain

    string public message; // just a public variable to store message value

    constructor() {
        // a normal contructor to initialize message variable with "message"
        message = "message";
    }

    function update() public {
        //called when we update the value of message variable, not called automatically, there's a button in remix for that

        string memory oldmsg = message; // memory is a term to initialize temporary variable

        message = "Hello, world"; // updated to Hello World now!

        emit messagechanged(oldmsg, message); // here we're registering the changes on blockchain
    }
}
