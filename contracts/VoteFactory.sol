// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract VoteFactory {
    enum WhoCanVote {
        Ether,
        Erc20,
        NFT
    }

    enum TimelineType {
        NumberOfVotes,
        BlockHight
    }

    struct VotingOption {
        bytes data;
        uint256 voteCount;
    }

    struct Proposal {
        address owner;
        bytes metadata;
        bool isActive;
        WhoCanVote whoCanVote;
        TimelineType timelineType;
        VotingOption[] votingOptions;
    }

    Proposal[] public prpposals;

    function createProposal(
        bytes memory _metadata,
        uint8 _whoCanVote,
        bool _isTimeLineBlockHight,
        VotingOption[] memory _options
    ) public pure returns (uint256) {
        return _options.length;
    }
}
