// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/utils/math/SafeMath.sol';


contract Blu is ERC20  {
    using SafeMath for uint256;
    address  admin;
   // uint256 public bluSupply;
    constructor() ERC20 ("BLU TOKEN","BLU"){
            admin= msg.sender;
            
    }

    function updateAdmin(address _admin)external {
        require(msg.sender==admin,"you are not allowed to use this function");
        admin=_admin;
    }

    function mintBlu(address _admin,uint256 _amount)external {
        require(msg.sender==admin,"this is for the admin");
        require(totalSupply().add(_amount)<=300000000000000000000000000,"too much");

        _mint(_admin, _amount *10**decimals());

    }


}