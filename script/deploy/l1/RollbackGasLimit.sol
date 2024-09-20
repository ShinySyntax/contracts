// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import './SetGasLimitBuilder.sol';

contract RollbackGasLimit is SetGasLimitBuilder {
    function _fromGasLimit() internal view override returns (uint64) {
        return uint64(vm.envUint("NEW_GAS_LIMIT"));
    }

    function _toGasLimit() internal view override returns (uint64) {
        return uint64(vm.envUint("OLD_GAS_LIMIT"));
    }

    function _nonceOffset() internal pure override returns (uint64) {
        return 1;
    }
}