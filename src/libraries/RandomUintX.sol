// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/// @title RandomUintX
/// @notice Utility functions to extract pseudo-random unsigned integers of various bit sizes from a uint256 seed
library RandomUintX {
    /// @notice Returns a uint8 value derived from the given seed by masking with the maximum uint8 value.
    /// @dev The function extracts the least significant byte (8 bits) from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint8 value derived from the seed.
    function nextUint8(uint256 seed) internal pure returns (uint8) {
        return uint8(seed & type(uint8).max);
    }

    /// @notice Returns a uint16 value derived from the given seed by masking with the maximum uint16 value.
    /// @dev The function extracts the least significant 16 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint16 value derived from the seed.
    function nextUint16(uint256 seed) internal pure returns (uint16) {
        return uint16(seed & type(uint16).max);
    }

    /// @notice Returns a uint24 value derived from the given seed by masking with the maximum uint24 value.
    /// @dev The function extracts the least significant 24 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint24 value derived from the seed.
    function nextUint24(uint256 seed) internal pure returns (uint24) {
        return uint24(seed & type(uint24).max);
    }

    /// @notice Returns a uint32 value derived from the given seed by masking with the maximum uint32 value.
    /// @dev The function extracts the least significant 32 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint32 value derived from the seed.
    function nextUint32(uint256 seed) internal pure returns (uint32) {
        return uint32(seed & type(uint32).max);
    }

    /// @notice Returns a uint40 value derived from the given seed by masking with the maximum uint40 value.
    /// @dev The function extracts the least significant 40 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint40 value derived from the seed.
    function nextUint40(uint256 seed) internal pure returns (uint40) {
        return uint40(seed & type(uint40).max);
    }

    /// @notice Returns a uint48 value derived from the given seed by masking with the maximum uint48 value.
    /// @dev The function extracts the least significant 48 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint48 value derived from the seed.
    function nextUint48(uint256 seed) internal pure returns (uint48) {
        return uint48(seed & type(uint48).max);
    }

    /// @notice Returns a uint56 value derived from the given seed by masking with the maximum uint56 value.
    /// @dev The function extracts the least significant 56 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint56 value derived from the seed.
    function nextUint56(uint256 seed) internal pure returns (uint56) {
        return uint56(seed & type(uint56).max);
    }

    /// @notice Returns a uint64 value derived from the given seed by masking with the maximum uint64 value.
    /// @dev The function extracts the least significant 64 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint64 value derived from the seed.
    function nextUint64(uint256 seed) internal pure returns (uint64) {
        return uint64(seed & type(uint64).max);
    }

    /// @notice Returns a uint72 value derived from the given seed by masking with the maximum uint72 value.
    /// @dev The function extracts the least significant 72 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint72 value derived from the seed.
    function nextUint72(uint256 seed) internal pure returns (uint72) {
        return uint72(seed & type(uint72).max);
    }

    /// @notice Returns a uint80 value derived from the given seed by masking with the maximum uint80 value.
    /// @dev The function extracts the least significant 80 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint80 value derived from the seed.
    function nextUint80(uint256 seed) internal pure returns (uint80) {
        return uint80(seed & type(uint80).max);
    }

    /// @notice Returns a uint88 value derived from the given seed by masking with the maximum uint88 value.
    /// @dev The function extracts the least significant 88 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint88 value derived from the seed.
    function nextUint88(uint256 seed) internal pure returns (uint88) {
        return uint88(seed & type(uint88).max);
    }

    /// @notice Returns a uint96 value derived from the given seed by masking with the maximum uint96 value.
    /// @dev The function extracts the least significant 96 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint96 value derived from the seed.
    function nextUint96(uint256 seed) internal pure returns (uint96) {
        return uint96(seed & type(uint96).max);
    }

    /// @notice Returns a uint104 value derived from the given seed by masking with the maximum uint104 value.
    /// @dev The function extracts the least significant 104 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint104 value derived from the seed.
    function nextUint104(uint256 seed) internal pure returns (uint104) {
        return uint104(seed & type(uint104).max);
    }

    /// @notice Returns a uint112 value derived from the given seed by masking with the maximum uint112 value.
    /// @dev The function extracts the least significant 112 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint112 value derived from the seed.
    function nextUint112(uint256 seed) internal pure returns (uint112) {
        return uint112(seed & type(uint112).max);
    }

    /// @notice Returns a uint120 value derived from the given seed by masking with the maximum uint120 value.
    /// @dev The function extracts the least significant 120 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint120 value derived from the seed.
    function nextUint120(uint256 seed) internal pure returns (uint120) {
        return uint120(seed & type(uint120).max);
    }

    /// @notice Returns a uint128 value derived from the given seed by masking with the maximum uint128 value.
    /// @dev The function extracts the least significant 128 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint128 value derived from the seed.
    function nextUint128(uint256 seed) internal pure returns (uint128) {
        return uint128(seed & type(uint128).max);
    }

    /// @notice Returns a uint136 value derived from the given seed by masking with the maximum uint136 value.
    /// @dev The function extracts the least significant 136 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint136 value derived from the seed.
    function nextUint136(uint256 seed) internal pure returns (uint136) {
        return uint136(seed & type(uint136).max);
    }

    /// @notice Returns a uint144 value derived from the given seed by masking with the maximum uint144 value.
    /// @dev The function extracts the least significant 144 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint144 value derived from the seed.
    function nextUint144(uint256 seed) internal pure returns (uint144) {
        return uint144(seed & type(uint144).max);
    }

    /// @notice Returns a uint152 value derived from the given seed by masking with the maximum uint152 value.
    /// @dev The function extracts the least significant 152 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint152 value derived from the seed.
    function nextUint152(uint256 seed) internal pure returns (uint152) {
        return uint152(seed & type(uint152).max);
    }

    /// @notice Returns a uint160 value derived from the given seed by masking with the maximum uint160 value.
    /// @dev The function extracts the least significant 160 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint160 value derived from the seed.
    function nextUint160(uint256 seed) internal pure returns (uint160) {
        return uint160(seed & type(uint160).max);
    }

    /// @notice Returns a uint168 value derived from the given seed by masking with the maximum uint168 value.
    /// @dev The function extracts the least significant 168 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint168 value derived from the seed.
    function nextUint168(uint256 seed) internal pure returns (uint168) {
        return uint168(seed & type(uint168).max);
    }

    /// @notice Returns a uint176 value derived from the given seed by masking with the maximum uint176 value.
    /// @dev The function extracts the least significant 176 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint176 value derived from the seed.
    function nextUint176(uint256 seed) internal pure returns (uint176) {
        return uint176(seed & type(uint176).max);
    }

    /// @notice Returns a uint184 value derived from the given seed by masking with the maximum uint184 value.
    /// @dev The function extracts the least significant 184 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint184 value derived from the seed.
    function nextUint184(uint256 seed) internal pure returns (uint184) {
        return uint184(seed & type(uint184).max);
    }

    /// @notice Returns a uint192 value derived from the given seed by masking with the maximum uint192 value.
    /// @dev The function extracts the least significant 192 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint192 value derived from the seed.
    function nextUint192(uint256 seed) internal pure returns (uint192) {
        return uint192(seed & type(uint192).max);
    }

    /// @notice Returns a uint200 value derived from the given seed by masking with the maximum uint200 value.
    /// @dev The function extracts the least significant 200 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint200 value derived from the seed.
    function nextUint200(uint256 seed) internal pure returns (uint200) {
        return uint200(seed & type(uint200).max);
    }

    /// @notice Returns a uint208 value derived from the given seed by masking with the maximum uint208 value.
    /// @dev The function extracts the least significant 208 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint208 value derived from the seed.
    function nextUint208(uint256 seed) internal pure returns (uint208) {
        return uint208(seed & type(uint208).max);
    }

    /// @notice Returns a uint216 value derived from the given seed by masking with the maximum uint216 value.
    /// @dev The function extracts the least significant 216 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint216 value derived from the seed.
    function nextUint216(uint256 seed) internal pure returns (uint216) {
        return uint216(seed & type(uint216).max);
    }

    /// @notice Returns a uint224 value derived from the given seed by masking with the maximum uint224 value.
    /// @dev The function extracts the least significant 224 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint224 value derived from the seed.
    function nextUint224(uint256 seed) internal pure returns (uint224) {
        return uint224(seed & type(uint224).max);
    }

    /// @notice Returns a uint232 value derived from the given seed by masking with the maximum uint232 value.
    /// @dev The function extracts the least significant 232 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint232 value derived from the seed.
    function nextUint232(uint256 seed) internal pure returns (uint232) {
        return uint232(seed & type(uint232).max);
    }

    /// @notice Returns a uint240 value derived from the given seed by masking with the maximum uint240 value.
    /// @dev The function extracts the least significant 240 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint240 value derived from the seed.
    function nextUint240(uint256 seed) internal pure returns (uint240) {
        return uint240(seed & type(uint240).max);
    }

    /// @notice Returns a uint248 value derived from the given seed by masking with the maximum uint248 value.
    /// @dev The function extracts the least significant 248 bits from the seed.
    /// @param seed The input seed value of type uint256.
    /// @return A uint248 value derived from the seed.
    function nextUint248(uint256 seed) internal pure returns (uint248) {
        return uint248(seed & type(uint248).max);
    }

    /// @notice Returns the full uint256 seed value as is.
    /// @dev This function simply returns the input value with no alteration.
    /// @param seed The input seed value of type uint256.
    /// @return The same uint256 seed value.
    function nextUint256(uint256 seed) internal pure returns (uint256) {
        return seed;
    }
}
