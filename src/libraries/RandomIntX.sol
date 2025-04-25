// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/// @title RandomIntX
/// @notice Utility functions to extract pseudo-random signed integers of various bit sizes from a uint256 seed
library RandomIntX {
    function nextInt8(uint256 seed) internal pure returns (int8) {
        return int8(uint8(seed & type(uint8).max));
    }

    function nextInt16(uint256 seed) internal pure returns (int16) {
        return int16(uint16(seed & type(uint16).max));
    }

    function nextInt24(uint256 seed) internal pure returns (int24) {
        return int24(uint24(seed & 0xFFFFFF));
    }

    function nextInt32(uint256 seed) internal pure returns (int32) {
        return int32(uint32(seed & type(uint32).max));
    }

    function nextInt40(uint256 seed) internal pure returns (int40) {
        return int40(uint40(seed & 0xFFFFFFFFFF));
    }

    function nextInt48(uint256 seed) internal pure returns (int48) {
        return int48(uint48(seed & 0xFFFFFFFFFFFF));
    }

    function nextInt56(uint256 seed) internal pure returns (int56) {
        return int56(uint56(seed & 0xFFFFFFFFFFFFFF));
    }

    function nextInt64(uint256 seed) internal pure returns (int64) {
        return int64(uint64(seed & type(uint64).max));
    }

    function nextInt72(uint256 seed) internal pure returns (int72) {
        return int72(uint72(seed & 0xFFFFFFFFFFFFFFFFFF));
    }

    function nextInt80(uint256 seed) internal pure returns (int80) {
        return int80(uint80(seed & 0xFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt88(uint256 seed) internal pure returns (int88) {
        return int88(uint88(seed & 0xFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt96(uint256 seed) internal pure returns (int96) {
        return int96(uint96(seed & type(uint96).max));
    }

    function nextInt104(uint256 seed) internal pure returns (int104) {
        return int104(uint104(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt112(uint256 seed) internal pure returns (int112) {
        return int112(uint112(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt120(uint256 seed) internal pure returns (int120) {
        return int120(uint120(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt128(uint256 seed) internal pure returns (int128) {
        return int128(uint128(seed & type(uint128).max));
    }

    function nextInt136(uint256 seed) internal pure returns (int136) {
        return int136(uint136(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt144(uint256 seed) internal pure returns (int144) {
        return int144(uint144(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt152(uint256 seed) internal pure returns (int152) {
        return int152(uint152(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt160(uint256 seed) internal pure returns (int160) {
        return int160(uint160(seed & type(uint160).max));
    }

    function nextInt168(uint256 seed) internal pure returns (int168) {
        return int168(uint168(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt176(uint256 seed) internal pure returns (int176) {
        return int176(uint176(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt184(uint256 seed) internal pure returns (int184) {
        return int184(uint184(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt192(uint256 seed) internal pure returns (int192) {
        return int192(uint192(seed & type(uint192).max));
    }

    function nextInt200(uint256 seed) internal pure returns (int200) {
        return int200(uint200(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt208(uint256 seed) internal pure returns (int208) {
        return int208(uint208(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt216(uint256 seed) internal pure returns (int216) {
        return int216(uint216(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt224(uint256 seed) internal pure returns (int224) {
        return int224(uint224(seed & type(uint224).max));
    }

    function nextInt232(uint256 seed) internal pure returns (int232) {
        return int232(uint232(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt240(uint256 seed) internal pure returns (int240) {
        return int240(uint240(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt248(uint256 seed) internal pure returns (int248) {
        return int248(uint248(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    function nextInt256(uint256 seed) internal pure returns (int256) {
        return int256(seed);
    }
}
