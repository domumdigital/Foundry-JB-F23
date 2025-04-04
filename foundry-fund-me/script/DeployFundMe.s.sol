// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2 <0.9.0;

import {Script, console} from "../lib/forge-std/src/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract DeployFundMe is Script {
    FundMe fundMe;

    function run() external returns (FundMe) {
        vm.startBroadcast();
        fundMe = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        vm.stopBroadcast();
        return fundMe;
    }
}
