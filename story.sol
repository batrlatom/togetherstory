pragma solidity ^0.4.6;

contract Story {
  struct StoryStruct {
    string[] structArray;
    uint[] votes;
  }

  mapping(address => StoryStruct) myStructs;

  function Story() {
    // nothing to do
  }

  function appendString(string appendMe) returns(uint length) {
    return myStructs[msg.sender].structArray.push(appendMe);
  }

  function getCount() constant returns(uint length) {
    return myStructs[msg.sender].structArray.length;
  }

  function getStringAtIndex(uint index) constant returns(string value) {
    return myStructs[msg.sender].structArray[index];
  }
  
  function voteForString(uint index){
    myStructs[msg.sender].votes[index] = 1;
  }
  
  function getVotesForString(uint index) constant returns(uint value){
    return 0;
  }
  
}

