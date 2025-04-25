// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/// @title RandomUintXInRange
/// @notice Generates pseudo-random unsigned integers within a range from a uint256 seed
library RandomUintXInRange {
    /// @notice Returns a random unsigned integer in the range [min, max] inclusive
    /// @param seed The seed value used to generate the random number
    /// @param min The lower bound of the range (inclusive)
    /// @param max The upper bound of the range (inclusive)
    /// @return A pseudo-random number in the given range [min, max]
    function nextUintInRange(uint256 seed, uint256 min, uint256 max) internal pure returns (uint256) {
        require(min <= max, "Invalid range");
        if (min == max) return min;

        uint256 range = max - min + 1;
        return min + (seed % range);
    }

    /// @notice Generates a random uint8 value within a specified range.
    /// @dev This function returns a random uint8 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint8 value within the specified range.
    function nextUint8InRange(uint256 seed, uint8 min, uint8 max) internal pure returns (uint8) {
        return uint8(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint16 value within a specified range.
    /// @dev This function returns a random uint16 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint16 value within the specified range.
    function nextUint16InRange(uint256 seed, uint16 min, uint16 max) internal pure returns (uint16) {
        return uint16(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint24 value within a specified range.
    /// @dev This function returns a random uint24 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint24 value within the specified range.
    function nextUint24InRange(uint256 seed, uint24 min, uint24 max) internal pure returns (uint24) {
        return uint24(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint32 value within a specified range.
    /// @dev This function returns a random uint32 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint32 value within the specified range.
    function nextUint32InRange(uint256 seed, uint32 min, uint32 max) internal pure returns (uint32) {
        return uint32(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint40 value within a specified range.
    /// @dev This function returns a random uint40 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint40 value within the specified range.
    function nextUint40InRange(uint256 seed, uint40 min, uint40 max) internal pure returns (uint40) {
        return uint40(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint48 value within a specified range.
    /// @dev This function returns a random uint48 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint48 value within the specified range.
    function nextUint48InRange(uint256 seed, uint48 min, uint48 max) internal pure returns (uint48) {
        return uint48(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint56 value within a specified range.
    /// @dev This function returns a random uint56 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint56 value within the specified range.
    function nextUint56InRange(uint256 seed, uint56 min, uint56 max) internal pure returns (uint56) {
        return uint56(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint64 value within a specified range.
    /// @dev This function returns a random uint64 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint64 value within the specified range.
    function nextUint64InRange(uint256 seed, uint64 min, uint64 max) internal pure returns (uint64) {
        return uint64(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint72 value within a specified range.
    /// @dev This function returns a random uint72 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint72 value within the specified range.
    function nextUint72InRange(uint256 seed, uint72 min, uint72 max) internal pure returns (uint72) {
        return uint72(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint80 value within a specified range.
    /// @dev This function returns a random uint80 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint80 value within the specified range.
    function nextUint80InRange(uint256 seed, uint80 min, uint80 max) internal pure returns (uint80) {
        return uint80(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint88 value within a specified range.
    /// @dev This function returns a random uint88 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint88 value within the specified range.
    function nextUint88InRange(uint256 seed, uint88 min, uint88 max) internal pure returns (uint88) {
        return uint88(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint96 value within a specified range.
    /// @dev This function returns a random uint96 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint96 value within the specified range.
    function nextUint96InRange(uint256 seed, uint96 min, uint96 max) internal pure returns (uint96) {
        return uint96(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint104 value within a specified range.
    /// @dev This function returns a random uint104 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint104 value within the specified range.
    function nextUint104InRange(uint256 seed, uint104 min, uint104 max) internal pure returns (uint104) {
        return uint104(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint112 value within a specified range.
    /// @dev This function returns a random uint112 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint112 value within the specified range.
    function nextUint112InRange(uint256 seed, uint112 min, uint112 max) internal pure returns (uint112) {
        return uint112(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint120 value within a specified range.
    /// @dev This function returns a random uint120 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint120 value within the specified range.
    function nextUint120InRange(uint256 seed, uint120 min, uint120 max) internal pure returns (uint120) {
        return uint120(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint128 value within a specified range.
    /// @dev This function returns a random uint128 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint128 value within the specified range.
    function nextUint128InRange(uint256 seed, uint128 min, uint128 max) internal pure returns (uint128) {
        return uint128(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint136 value within a specified range.
    /// @dev This function returns a random uint136 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint136 value within the specified range.
    function nextUint136InRange(uint256 seed, uint136 min, uint136 max) internal pure returns (uint136) {
        return uint136(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint144 value within a specified range.
    /// @dev This function returns a random uint144 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint144 value within the specified range.
    function nextUint144InRange(uint256 seed, uint144 min, uint144 max) internal pure returns (uint144) {
        return uint144(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint152 value within a specified range.
    /// @dev This function returns a random uint152 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint152 value within the specified range.
    function nextUint152InRange(uint256 seed, uint152 min, uint152 max) internal pure returns (uint152) {
        return uint152(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint160 value within a specified range.
    /// @dev This function returns a random uint160 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint160 value within the specified range.
    function nextUint160InRange(uint256 seed, uint160 min, uint160 max) internal pure returns (uint160) {
        return uint160(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint168 value within a specified range.
    /// @dev This function returns a random uint168 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint168 value within the specified range.
    function nextUint168InRange(uint256 seed, uint168 min, uint168 max) internal pure returns (uint168) {
        return uint168(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint176 value within a specified range.
    /// @dev This function returns a random uint176 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint176 value within the specified range.
    function nextUint176InRange(uint256 seed, uint176 min, uint176 max) internal pure returns (uint176) {
        return uint176(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint184 value within a specified range.
    /// @dev This function returns a random uint184 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint184 value within the specified range.
    function nextUint184InRange(uint256 seed, uint184 min, uint184 max) internal pure returns (uint184) {
        return uint184(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint192 value within a specified range.
    /// @dev This function returns a random uint192 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint192 value within the specified range.
    function nextUint192InRange(uint256 seed, uint192 min, uint192 max) internal pure returns (uint192) {
        return uint192(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint200 value within a specified range.
    /// @dev This function returns a random uint200 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint200 value within the specified range.
    function nextUint200InRange(uint256 seed, uint200 min, uint200 max) internal pure returns (uint200) {
        return uint200(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint208 value within a specified range.
    /// @dev This function returns a random uint208 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint208 value within the specified range.
    function nextUint208InRange(uint256 seed, uint208 min, uint208 max) internal pure returns (uint208) {
        return uint208(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint216 value within a specified range.
    /// @dev This function returns a random uint216 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint216 value within the specified range.
    function nextUint216InRange(uint256 seed, uint216 min, uint216 max) internal pure returns (uint216) {
        return uint216(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint224 value within a specified range.
    /// @dev This function returns a random uint224 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint224 value within the specified range.
    function nextUint224InRange(uint256 seed, uint224 min, uint224 max) internal pure returns (uint224) {
        return uint224(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint232 value within a specified range.
    /// @dev This function returns a random uint232 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint232 value within the specified range.
    function nextUint232InRange(uint256 seed, uint232 min, uint232 max) internal pure returns (uint232) {
        return uint232(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint240 value within a specified range.
    /// @dev This function returns a random uint240 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint240 value within the specified range.
    function nextUint240InRange(uint256 seed, uint240 min, uint240 max) internal pure returns (uint240) {
        return uint240(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint248 value within a specified range.
    /// @dev This function returns a random uint248 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint248 value within the specified range.
    function nextUint248InRange(uint256 seed, uint248 min, uint248 max) internal pure returns (uint248) {
        return uint248(nextUintInRange(seed, uint256(min), uint256(max)));
    }

    /// @notice Generates a random uint256 value within a specified range.
    /// @dev This function returns a random uint256 value between min and max (inclusive) using a provided seed.
    /// @param seed The random seed to generate the value.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @return A random uint256 value within the specified range.
    function nextUint256InRange(uint256 seed, uint256 min, uint256 max) internal pure returns (uint256) {
        return nextUintInRange(seed, min, max);
    }
}
