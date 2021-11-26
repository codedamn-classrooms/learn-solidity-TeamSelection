//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Team {
    address[16] public team;

    function getTeamPlayers() public view returns (address[16] memory) {
        return team;
    }

    function selectJerseyNumber(uint256 playerId) public returns (uint256) {
        require(playerId >= 0 && playerId <= 15);
        team[playerId] = msg.sender;
        return playerId;
    }
}
