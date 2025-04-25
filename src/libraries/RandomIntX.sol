// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/// @title RandomIntX
/// @notice Utility functions to extract pseudo-random signed integers of various bit sizes from a uint256 seed
library RandomIntX {
    /// @notice Generates a random int8 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int8 value.
    function nextInt8(uint256 seed) internal pure returns (int8) {
        return int8(uint8(seed & type(uint8).max));
    }

    /// @notice Generates a random int16 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int16 value.
    function nextInt16(uint256 seed) internal pure returns (int16) {
        return int16(uint16(seed & type(uint16).max));
    }

    /// @notice Generates a random int24 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int24 value.
    function nextInt24(uint256 seed) internal pure returns (int24) {
        return int24(uint24(seed & 0xFFFFFF));
    }

    /// @notice Generates a random int32 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int32 value.
    function nextInt32(uint256 seed) internal pure returns (int32) {
        return int32(uint32(seed & type(uint32).max));
    }

    /// @notice Generates a random int40 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int40 value.
    function nextInt40(uint256 seed) internal pure returns (int40) {
        return int40(uint40(seed & 0xFFFFFFFFFF));
    }

    /// @notice Generates a random int48 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int48 value.
    function nextInt48(uint256 seed) internal pure returns (int48) {
        return int48(uint48(seed & 0xFFFFFFFFFFFF));
    }

    /// @notice Generates a random int56 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int56 value.
    function nextInt56(uint256 seed) internal pure returns (int56) {
        return int56(uint56(seed & 0xFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int64 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int64 value.
    function nextInt64(uint256 seed) internal pure returns (int64) {
        return int64(uint64(seed & type(uint64).max));
    }

    /// @notice Generates a random int72 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int72 value.
    function nextInt72(uint256 seed) internal pure returns (int72) {
        return int72(uint72(seed & 0xFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int80 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int80 value.
    function nextInt80(uint256 seed) internal pure returns (int80) {
        return int80(uint80(seed & 0xFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int88 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int88 value.
    function nextInt88(uint256 seed) internal pure returns (int88) {
        return int88(uint88(seed & 0xFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int96 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int96 value.
    function nextInt96(uint256 seed) internal pure returns (int96) {
        return int96(uint96(seed & type(uint96).max));
    }

    /// @notice Generates a random int104 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int104 value.
    function nextInt104(uint256 seed) internal pure returns (int104) {
        return int104(uint104(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int112 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int112 value.
    function nextInt112(uint256 seed) internal pure returns (int112) {
        return int112(uint112(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int120 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int120 value.
    function nextInt120(uint256 seed) internal pure returns (int120) {
        return int120(uint120(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int128 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int128 value.
    function nextInt128(uint256 seed) internal pure returns (int128) {
        return int128(uint128(seed & type(uint128).max));
    }

    /// @notice Generates a random int136 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int136 value.
    function nextInt136(uint256 seed) internal pure returns (int136) {
        return int136(uint136(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int144 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int144 value.
    function nextInt144(uint256 seed) internal pure returns (int144) {
        return int144(uint144(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int152 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int152 value.
    function nextInt152(uint256 seed) internal pure returns (int152) {
        return int152(uint152(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int160 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int160 value.
    function nextInt160(uint256 seed) internal pure returns (int160) {
        return int160(uint160(seed & type(uint160).max));
    }

    /// @notice Generates a random int168 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int168 value.
    function nextInt168(uint256 seed) internal pure returns (int168) {
        return int168(uint168(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int176 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int176 value.
    function nextInt176(uint256 seed) internal pure returns (int176) {
        return int176(uint176(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int184 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int184 value.
    function nextInt184(uint256 seed) internal pure returns (int184) {
        return int184(uint184(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int192 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int192 value.
    function nextInt192(uint256 seed) internal pure returns (int192) {
        return int192(uint192(seed & type(uint192).max));
    }

    /// @notice Generates a random int200 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int200 value.
    function nextInt200(uint256 seed) internal pure returns (int200) {
        return int200(uint200(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int208 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int208 value.
    function nextInt208(uint256 seed) internal pure returns (int208) {
        return int208(uint208(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int216 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int216 value.
    function nextInt216(uint256 seed) internal pure returns (int216) {
        return int216(uint216(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int224 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int224 value.
    function nextInt224(uint256 seed) internal pure returns (int224) {
        return int224(uint224(seed & type(uint224).max));
    }

    /// @notice Generates a random int232 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int232 value.
    function nextInt232(uint256 seed) internal pure returns (int232) {
        return int232(uint232(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int240 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int240 value.
    function nextInt240(uint256 seed) internal pure returns (int240) {
        return int240(uint240(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int248 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int248 value.
    function nextInt248(uint256 seed) internal pure returns (int248) {
        return int248(uint248(seed & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF));
    }

    /// @notice Generates a random int256 from the provided seed.
    /// @param seed The input seed used to generate the random number.
    /// @return A random int256 value.
    function nextInt256(uint256 seed) internal pure returns (int256) {
        return int256(seed);
    }
}
