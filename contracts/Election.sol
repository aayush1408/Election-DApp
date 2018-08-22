pragma solidity ^0.4.24;

contract Election{
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }
    mapping(uint => Candidate) public candidates;

    uint public noOfCandidates;

    function Election() public{
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string _name) private {
        noOfCandidates++;
        candidates[noOfCandidates] = Candidate(noOfCandidates,_name,0);

    }
}