// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/// @title RandomIntXInRange
/// @notice Generates pseudo-random signed integers within a range from a uint256 seed
library RandomIntXInRange {
    /// @notice Generates a pseudo-random integer within a given range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random integer between `min` and `max`, inclusive.
    function nextIntInRange(uint256 seed, int256 min, int256 max) internal pure returns (int256) {
        require(min <= max, "Invalid range"); // Ensure that min <= max
        if (min == max) return min; // If min equals max, return min directly

        uint256 range = uint256(int256(max - min)) + 1; // Calculate the range of numbers
        uint256 scaledValue = seed % range; // Generate a random value within the range
        return int256(scaledValue) + min; // Return the value within the range
    }

    /// @notice Generates a pseudo-random int8 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int8 between `min` and `max`, inclusive.
    function nextInt8InRange(uint256 seed, int8 min, int8 max) internal pure returns (int8) {
        return int8(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int16 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int16 between `min` and `max`, inclusive.
    function nextInt16InRange(uint256 seed, int16 min, int16 max) internal pure returns (int16) {
        return int16(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int24 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int24 between `min` and `max`, inclusive.
    function nextInt24InRange(uint256 seed, int24 min, int24 max) internal pure returns (int24) {
        return int24(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int32 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int32 between `min` and `max`, inclusive.
    function nextInt32InRange(uint256 seed, int32 min, int32 max) internal pure returns (int32) {
        return int32(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int40 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int40 between `min` and `max`, inclusive.
    function nextInt40InRange(uint256 seed, int40 min, int40 max) internal pure returns (int40) {
        return int40(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int48 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int48 between `min` and `max`, inclusive.
    function nextInt48InRange(uint256 seed, int48 min, int48 max) internal pure returns (int48) {
        return int48(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int56 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int56 between `min` and `max`, inclusive.
    function nextInt56InRange(uint256 seed, int56 min, int56 max) internal pure returns (int56) {
        return int56(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int64 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int64 between `min` and `max`, inclusive.
    function nextInt64InRange(uint256 seed, int64 min, int64 max) internal pure returns (int64) {
        return int64(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int72 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int72 between `min` and `max`, inclusive.
    function nextInt72InRange(uint256 seed, int72 min, int72 max) internal pure returns (int72) {
        return int72(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int80 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int80 between `min` and `max`, inclusive.
    function nextInt80InRange(uint256 seed, int80 min, int80 max) internal pure returns (int80) {
        return int80(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int88 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int88 between `min` and `max`, inclusive.
    function nextInt88InRange(uint256 seed, int88 min, int88 max) internal pure returns (int88) {
        return int88(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int96 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int96 between `min` and `max`, inclusive.
    function nextInt96InRange(uint256 seed, int96 min, int96 max) internal pure returns (int96) {
        return int96(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int104 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int104 between `min` and `max`, inclusive.
    function nextInt104InRange(uint256 seed, int104 min, int104 max) internal pure returns (int104) {
        return int104(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int112 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int112 between `min` and `max`, inclusive.
    function nextInt112InRange(uint256 seed, int112 min, int112 max) internal pure returns (int112) {
        return int112(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int120 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int120 between `min` and `max`, inclusive.
    function nextInt120InRange(uint256 seed, int120 min, int120 max) internal pure returns (int120) {
        return int120(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int128 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int128 between `min` and `max`, inclusive.
    function nextInt128InRange(uint256 seed, int128 min, int128 max) internal pure returns (int128) {
        return int128(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int136 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int136 between `min` and `max`, inclusive.
    function nextInt136InRange(uint256 seed, int136 min, int136 max) internal pure returns (int136) {
        return int136(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int144 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int144 between `min` and `max`, inclusive.
    function nextInt144InRange(uint256 seed, int144 min, int144 max) internal pure returns (int144) {
        return int144(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int152 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int152 between `min` and `max`, inclusive.
    function nextInt152InRange(uint256 seed, int152 min, int152 max) internal pure returns (int152) {
        return int152(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int160 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int160 between `min` and `max`, inclusive.
    function nextInt160InRange(uint256 seed, int160 min, int160 max) internal pure returns (int160) {
        return int160(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int168 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int168 between `min` and `max`, inclusive.
    function nextInt168InRange(uint256 seed, int168 min, int168 max) internal pure returns (int168) {
        return int168(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int176 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int176 between `min` and `max`, inclusive.
    function nextInt176InRange(uint256 seed, int176 min, int176 max) internal pure returns (int176) {
        return int176(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int184 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int184 between `min` and `max`, inclusive.
    function nextInt184InRange(uint256 seed, int184 min, int184 max) internal pure returns (int184) {
        return int184(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int192 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int192 between `min` and `max`, inclusive.
    function nextInt192InRange(uint256 seed, int192 min, int192 max) internal pure returns (int192) {
        return int192(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int200 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int200 between `min` and `max`, inclusive.
    function nextInt200InRange(uint256 seed, int200 min, int200 max) internal pure returns (int200) {
        return int200(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int208 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int208 between `min` and `max`, inclusive.
    function nextInt208InRange(uint256 seed, int208 min, int208 max) internal pure returns (int208) {
        return int208(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int216 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int216 between `min` and `max`, inclusive.
    function nextInt216InRange(uint256 seed, int216 min, int216 max) internal pure returns (int216) {
        return int216(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int224 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int224 between `min` and `max`, inclusive.
    function nextInt224InRange(uint256 seed, int224 min, int224 max) internal pure returns (int224) {
        return int224(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int232 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int232 between `min` and `max`, inclusive.
    function nextInt232InRange(uint256 seed, int232 min, int232 max) internal pure returns (int232) {
        return int232(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int240 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int240 between `min` and `max`, inclusive.
    function nextInt240InRange(uint256 seed, int240 min, int240 max) internal pure returns (int240) {
        return int240(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int248 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int248 between `min` and `max`, inclusive.
    function nextInt248InRange(uint256 seed, int248 min, int248 max) internal pure returns (int248) {
        return int248(nextIntInRange(seed, int256(min), int256(max)));
    }

    /// @notice Generates a pseudo-random int256 within a specified range [min, max].
    /// @param seed The pseudo-random seed used to generate the random number.
    /// @param min The lower bound (inclusive) of the range.
    /// @param max The upper bound (inclusive) of the range.
    /// @return A pseudo-random int256 between `min` and `max`, inclusive.
    function nextInt256InRange(uint256 seed, int256 min, int256 max) internal pure returns (int256) {
        return nextIntInRange(seed, min, max);
    }
}
