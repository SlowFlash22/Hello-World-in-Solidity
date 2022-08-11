//SPDX-License-Identifier: UNLICENSED
// all code explained in NoInput file
pragma solidity >=0.8.0;

contract HelloWorld {
    event messagechanged(string oldmsg, string newmsg);

    string public message;

    constructor(string memory firstmessage) {
        // something that we pass initially as message

        message = firstmessage;
    }

    function update(string memory newmesssage) public {
        string memory oldmsg = message;

        message = newmesssage;

        emit messagechanged(oldmsg, newmesssage);
    }
}
