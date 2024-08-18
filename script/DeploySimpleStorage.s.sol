// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.26;

import "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vmSafe.startBroadcast();

        SimpleStorage simpleStorage = new SimpleStorage();

        vmSafe.stopBroadcast();
        return simpleStorage;
    }
}
