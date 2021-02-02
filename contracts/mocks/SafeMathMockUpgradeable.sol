// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

import "../math/SafeMathUpgradeable.sol";
import "../proxy/Initializable.sol";

contract SafeMathMockUpgradeable is Initializable {
    function __SafeMathMock_init() internal initializer {
        __SafeMathMock_init_unchained();
    }

    function __SafeMathMock_init_unchained() internal initializer {
    }
    function tryAdd(uint256 a, uint256 b) public pure returns (bool flag, uint256 value) {
        return SafeMathUpgradeable.tryAdd(a, b);
    }

    function trySub(uint256 a, uint256 b) public pure returns (bool flag, uint256 value) {
        return SafeMathUpgradeable.trySub(a, b);
    }

    function tryMul(uint256 a, uint256 b) public pure returns (bool flag, uint256 value) {
        return SafeMathUpgradeable.tryMul(a, b);
    }

    function tryDiv(uint256 a, uint256 b) public pure returns (bool flag, uint256 value) {
        return SafeMathUpgradeable.tryDiv(a, b);
    }

    function tryMod(uint256 a, uint256 b) public pure returns (bool flag, uint256 value) {
        return SafeMathUpgradeable.tryMod(a, b);
    }

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return SafeMathUpgradeable.add(a, b);
    }

    function sub(uint256 a, uint256 b) public pure returns (uint256) {
        return SafeMathUpgradeable.sub(a, b);
    }

    function mul(uint256 a, uint256 b) public pure returns (uint256) {
        return SafeMathUpgradeable.mul(a, b);
    }

    function div(uint256 a, uint256 b) public pure returns (uint256) {
        return SafeMathUpgradeable.div(a, b);
    }

    function mod(uint256 a, uint256 b) public pure returns (uint256) {
        return SafeMathUpgradeable.mod(a, b);
    }

    function subWithMessage(uint256 a, uint256 b, string memory errorMessage) public pure returns (uint256) {
        return SafeMathUpgradeable.sub(a, b, errorMessage);
    }

    function divWithMessage(uint256 a, uint256 b, string memory errorMessage) public pure returns (uint256) {
        return SafeMathUpgradeable.div(a, b, errorMessage);
    }

    function modWithMessage(uint256 a, uint256 b, string memory errorMessage) public pure returns (uint256) {
        return SafeMathUpgradeable.mod(a, b, errorMessage);
    }

    function addMemoryCheck() public pure returns (uint256 mem) {
        uint256 length = 32;
        // solhint-disable-next-line no-inline-assembly
        assembly { mem := mload(0x40) }
        for (uint256 i = 0; i < length; ++i) { SafeMathUpgradeable.add(1, 1); }
        // solhint-disable-next-line no-inline-assembly
        assembly { mem := sub(mload(0x40), mem) }
    }

    function subMemoryCheck() public pure returns (uint256 mem) {
        uint256 length = 32;
        // solhint-disable-next-line no-inline-assembly
        assembly { mem := mload(0x40) }
        for (uint256 i = 0; i < length; ++i) { SafeMathUpgradeable.sub(1, 1); }
        // solhint-disable-next-line no-inline-assembly
        assembly { mem := sub(mload(0x40), mem) }
    }

    function mulMemoryCheck() public pure returns (uint256 mem) {
        uint256 length = 32;
        // solhint-disable-next-line no-inline-assembly
        assembly { mem := mload(0x40) }
        for (uint256 i = 0; i < length; ++i) { SafeMathUpgradeable.mul(1, 1); }
        // solhint-disable-next-line no-inline-assembly
        assembly { mem := sub(mload(0x40), mem) }
    }

    function divMemoryCheck() public pure returns (uint256 mem) {
        uint256 length = 32;
        // solhint-disable-next-line no-inline-assembly
        assembly { mem := mload(0x40) }
        for (uint256 i = 0; i < length; ++i) { SafeMathUpgradeable.div(1, 1); }
        // solhint-disable-next-line no-inline-assembly
        assembly { mem := sub(mload(0x40), mem) }
    }

    function modMemoryCheck() public pure returns (uint256 mem) {
        uint256 length = 32;
        // solhint-disable-next-line no-inline-assembly
        assembly { mem := mload(0x40) }
        for (uint256 i = 0; i < length; ++i) { SafeMathUpgradeable.mod(1, 1); }
        // solhint-disable-next-line no-inline-assembly
        assembly { mem := sub(mload(0x40), mem) }
    }

    uint256[50] private __gap;
}