// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {NotSoSimpleStorage} from "../src/NotSoSimpleStorage.sol";

contract DeployNoSoSimpleStorage is Script {
    function run() external returns (NotSoSimpleStorage) {
        vm.startBroadcast();
        // Everything between these is what we actually want to send onchain
        NotSoSimpleStorage notSoSimpleStorage = new NotSoSimpleStorage();

        vm.stopBroadcast();
        return notSoSimpleStorage;
    }
}
