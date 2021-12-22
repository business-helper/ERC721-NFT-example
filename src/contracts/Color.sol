// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.5.0;

// import '@openzeppelin/contracts/token/ERC721/ERC721.sol';
import './ERC721Full.sol';

contract Color is ERC721Full {
  // address public admin;
  string[] public colors;
  mapping(string => bool) _colorExists;

  constructor() ERC721Full("Color", "COLOR") public {}

  function mint(string memory _color) public {
    // require unique color
    // color - add it
    // call the mint function
    // Color - track it.
    require(!_colorExists[_color]);
    uint _id = colors.push(_color);
    _mint(msg.sender, _id);
    _colorExists[_color] = true;
  }
}
