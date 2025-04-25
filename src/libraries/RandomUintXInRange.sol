// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/// @title RandomUintXInRange
/// @notice Generates pseudo-random unsigned integers within a range from a uint256 seed
library RandomUintXInRange {
    /// @notice Returns a random unsigned integer in the range [min, max] inclusive
    /// @param seed The seed value used to generate the random number
    /// @param min The lower bound of the range (inclusive)
    /// @param max The upper bound of the range (inclusive)
    /// @param maxUint The maximum possible value for the type (i.e., the max uint for the number of bits used)
    /// @return A pseudo-random number in the given range [min, max]
    function nextUintInRange(uint256 seed, uint256 min, uint256 max, uint256 maxUint) internal pure returns (uint256) {
        require(min <= max, "Invalid range"); // Ensure the provided range is valid: min <= max

        // If min and max are the same, return the value directly (no randomness needed)
        if (min == max) return min;

        // Generate the random number in the range [min, max] using the seed
        // The seed is first used to create a random value in the range [0, (max - min)]
        // Then, this random value is shifted by adding 'min' to get the final number in the range [min, max]
        // The second modulo operation ensures that the result fits within the bounds of 'maxUint'
        return min + (seed % (max - min + 1)) % (maxUint);
    }

    function nextUint8InRange(uint256 seed, uint8 min, uint8 max) internal pure returns (uint8) {
        return uint8(nextUintInRange(seed, uint256(min), uint256(max), type(uint8).max));
    }

    function nextUint16InRange(uint256 seed, uint16 min, uint16 max) internal pure returns (uint16) {
        return uint16(nextUintInRange(seed, uint256(min), uint256(max), type(uint16).max));
    }

    function nextUint24InRange(uint256 seed, uint24 min, uint24 max) internal pure returns (uint24) {
        return uint24(nextUintInRange(seed, uint256(min), uint256(max), type(uint24).max));
    }

    function nextUint32InRange(uint256 seed, uint32 min, uint32 max) internal pure returns (uint32) {
        return uint32(nextUintInRange(seed, uint256(min), uint256(max), type(uint32).max));
    }

    function nextUint40InRange(uint256 seed, uint40 min, uint40 max) internal pure returns (uint40) {
        return uint40(nextUintInRange(seed, uint256(min), uint256(max), type(uint40).max));
    }

    function nextUint48InRange(uint256 seed, uint48 min, uint48 max) internal pure returns (uint48) {
        return uint48(nextUintInRange(seed, uint256(min), uint256(max), type(uint48).max));
    }

    function nextUint56InRange(uint256 seed, uint56 min, uint56 max) internal pure returns (uint56) {
        return uint56(nextUintInRange(seed, uint256(min), uint256(max), type(uint56).max));
    }

    function nextUint64InRange(uint256 seed, uint64 min, uint64 max) internal pure returns (uint64) {
        return uint64(nextUintInRange(seed, uint256(min), uint256(max), type(uint64).max));
    }

    function nextUint72InRange(uint256 seed, uint72 min, uint72 max) internal pure returns (uint72) {
        return uint72(nextUintInRange(seed, uint256(min), uint256(max), type(uint72).max));
    }

    function nextUint80InRange(uint256 seed, uint80 min, uint80 max) internal pure returns (uint80) {
        return uint80(nextUintInRange(seed, uint256(min), uint256(max), type(uint80).max));
    }

    function nextUint88InRange(uint256 seed, uint88 min, uint88 max) internal pure returns (uint88) {
        return uint88(nextUintInRange(seed, uint256(min), uint256(max), type(uint88).max));
    }

    function nextUint96InRange(uint256 seed, uint96 min, uint96 max) internal pure returns (uint96) {
        return uint96(nextUintInRange(seed, uint256(min), uint256(max), type(uint96).max));
    }

    function nextUint104InRange(uint256 seed, uint104 min, uint104 max) internal pure returns (uint104) {
        return uint104(nextUintInRange(seed, uint256(min), uint256(max), type(uint104).max));
    }

    function nextUint112InRange(uint256 seed, uint112 min, uint112 max) internal pure returns (uint112) {
        return uint112(nextUintInRange(seed, uint256(min), uint256(max), type(uint112).max));
    }

    function nextUint120InRange(uint256 seed, uint120 min, uint120 max) internal pure returns (uint120) {
        return uint120(nextUintInRange(seed, uint256(min), uint256(max), type(uint120).max));
    }

    function nextUint128InRange(uint256 seed, uint128 min, uint128 max) internal pure returns (uint128) {
        return uint128(nextUintInRange(seed, uint256(min), uint256(max), type(uint128).max));
    }

    function nextUint136InRange(uint256 seed, uint136 min, uint136 max) internal pure returns (uint136) {
        return uint136(nextUintInRange(seed, uint256(min), uint256(max), type(uint136).max));
    }

    function nextUint144InRange(uint256 seed, uint144 min, uint144 max) internal pure returns (uint144) {
        return uint144(nextUintInRange(seed, uint256(min), uint256(max), type(uint144).max));
    }

    function nextUint152InRange(uint256 seed, uint152 min, uint152 max) internal pure returns (uint152) {
        return uint152(nextUintInRange(seed, uint256(min), uint256(max), type(uint152).max));
    }

    function nextUint160InRange(uint256 seed, uint160 min, uint160 max) internal pure returns (uint160) {
        return uint160(nextUintInRange(seed, uint256(min), uint256(max), type(uint160).max));
    }

    function nextUint168InRange(uint256 seed, uint168 min, uint168 max) internal pure returns (uint168) {
        return uint168(nextUintInRange(seed, uint256(min), uint256(max), type(uint168).max));
    }

    function nextUint176InRange(uint256 seed, uint176 min, uint176 max) internal pure returns (uint176) {
        return uint176(nextUintInRange(seed, uint256(min), uint256(max), type(uint176).max));
    }

    function nextUint184InRange(uint256 seed, uint184 min, uint184 max) internal pure returns (uint184) {
        return uint184(nextUintInRange(seed, uint256(min), uint256(max), type(uint184).max));
    }

    function nextUint192InRange(uint256 seed, uint192 min, uint192 max) internal pure returns (uint192) {
        return uint192(nextUintInRange(seed, uint256(min), uint256(max), type(uint192).max));
    }

    function nextUint200InRange(uint256 seed, uint200 min, uint200 max) internal pure returns (uint200) {
        return uint200(nextUintInRange(seed, uint256(min), uint256(max), type(uint200).max));
    }

    function nextUint208InRange(uint256 seed, uint208 min, uint208 max) internal pure returns (uint208) {
        return uint208(nextUintInRange(seed, uint256(min), uint256(max), type(uint208).max));
    }

    function nextUint216InRange(uint256 seed, uint216 min, uint216 max) internal pure returns (uint216) {
        return uint216(nextUintInRange(seed, uint256(min), uint256(max), type(uint216).max));
    }

    function nextUint224InRange(uint256 seed, uint224 min, uint224 max) internal pure returns (uint224) {
        return uint224(nextUintInRange(seed, uint256(min), uint256(max), type(uint224).max));
    }

    function nextUint232InRange(uint256 seed, uint232 min, uint232 max) internal pure returns (uint232) {
        return uint232(nextUintInRange(seed, uint256(min), uint256(max), type(uint232).max));
    }

    function nextUint240InRange(uint256 seed, uint240 min, uint240 max) internal pure returns (uint240) {
        return uint240(nextUintInRange(seed, uint256(min), uint256(max), type(uint240).max));
    }

    function nextUint248InRange(uint256 seed, uint248 min, uint248 max) internal pure returns (uint248) {
        return uint248(nextUintInRange(seed, uint256(min), uint256(max), type(uint248).max));
    }

    function nextUint256InRange(uint256 seed, uint256 min, uint256 max) internal pure returns (uint256) {
        return uint256(nextUintInRange(seed, min, max, type(uint256).max));
    }
}
