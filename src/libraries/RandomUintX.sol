// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/// @title RandomUintX
/// @notice Utility functions to extract pseudo-random unsigned integers of various bit sizes from a uint256 seed
library RandomUintX {
    function nextUint8(uint256 seed) internal pure returns (uint8) {
        return uint8(seed & type(uint8).max);
    }

    function nextUint16(uint256 seed) internal pure returns (uint16) {
        return uint16(seed & type(uint16).max);
    }

    function nextUint24(uint256 seed) internal pure returns (uint24) {
        return uint24(seed & 0xFFFFFF);
    }

    function nextUint32(uint256 seed) internal pure returns (uint32) {
        return uint32(seed & type(uint32).max);
    }

    function nextUint40(uint256 seed) internal pure returns (uint40) {
        return uint40(seed & 0xFFFFFFFFFF);
    }

    function nextUint48(uint256 seed) internal pure returns (uint48) {
        return uint48(seed & 0xFFFFFFFFFFFF);
    }

    function nextUint56(uint256 seed) internal pure returns (uint56) {
        return uint56(seed & 0xFFFFFFFFFFFFFF);
    }

    function nextUint64(uint256 seed) internal pure returns (uint64) {
        return uint64(seed & type(uint64).max);
    }

    function nextUint72(uint256 seed) internal pure returns (uint72) {
        return uint72(seed & 0xFFFFFFFFFFFFFFFFFF);
    }

    function nextUint80(uint256 seed) internal pure returns (uint80) {
        return uint80(seed & 0xFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint88(uint256 seed) internal pure returns (uint88) {
        return uint88(seed & 0xFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint96(uint256 seed) internal pure returns (uint96) {
        return uint96(seed & type(uint96).max);
    }

    function nextUint104(uint256 seed) internal pure returns (uint104) {
        return uint104(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint112(uint256 seed) internal pure returns (uint112) {
        return uint112(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint120(uint256 seed) internal pure returns (uint120) {
        return uint120(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint128(uint256 seed) internal pure returns (uint128) {
        return uint128(seed & type(uint128).max);
    }

    function nextUint136(uint256 seed) internal pure returns (uint136) {
        return uint136(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint144(uint256 seed) internal pure returns (uint144) {
        return uint144(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint152(uint256 seed) internal pure returns (uint152) {
        return uint152(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint160(uint256 seed) internal pure returns (uint160) {
        return uint160(seed & type(uint160).max);
    }

    function nextUint168(uint256 seed) internal pure returns (uint168) {
        return uint168(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint176(uint256 seed) internal pure returns (uint176) {
        return uint176(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint184(uint256 seed) internal pure returns (uint184) {
        return uint184(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint192(uint256 seed) internal pure returns (uint192) {
        return uint192(seed & type(uint192).max);
    }

    function nextUint200(uint256 seed) internal pure returns (uint200) {
        return uint200(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint208(uint256 seed) internal pure returns (uint208) {
        return uint208(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint216(uint256 seed) internal pure returns (uint216) {
        return uint216(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint224(uint256 seed) internal pure returns (uint224) {
        return uint224(seed & type(uint224).max);
    }

    function nextUint232(uint256 seed) internal pure returns (uint232) {
        return uint232(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint240(uint256 seed) internal pure returns (uint240) {
        return uint240(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint248(uint256 seed) internal pure returns (uint248) {
        return uint248(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }

    function nextUint256(uint256 seed) internal pure returns (uint256) {
        return seed;
    }
}
