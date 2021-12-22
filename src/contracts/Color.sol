// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC721/ERC721.sol';

contract Color is ERC721 {
  address public admin;
  string[] public colors;
  mapping(string => bool) _colorExists;

  constructor() ERC721("Color", "COLOR") {
    admin = msg.sender;
  }

  function mint(string memory _color) public {
    // require unique color
    // color - add it
    // call the mint function
    // Color - track it.
    uint id = colors.push(_color);
    _mint(msg.sender, _id);
    _colorExists[_color] = true;
    
  }
}
