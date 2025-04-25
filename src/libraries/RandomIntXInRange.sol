// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/// @title RandomIntXInRange
/// @notice Generates pseudo-random signed integers within a range from a uint256 seed
library RandomIntXInRange {
    /// @notice Returns a random signed integer in the specified range.
    /// @param seed The seed value used for generating randomness.
    /// @param min The minimum value of the range.
    /// @param max The maximum value of the range.
    /// @param size The byte size of the integer (8, 16, 24, etc.).
    /// @return A pseudo-random signed integer within the range [min, max].
    function nextIntInRange(uint256 seed, int256 min, int256 max, uint8 size) internal pure returns (int256) {
        require(min <= max, "Invalid range");
        if (min == max) return min;

        // Determine the range size based on the integer type (e.g., int8, int16, etc.)
        uint256 range;
        if (min == 0) {
            range = uint256(max) + 1;
        } else {
            range = uint256(max) - uint256(min) + 1;
        }

        uint256 scaledValue = uint256(seed % range);
        int256 temp = int256(scaledValue) + min;

        // Handle overflow/underflow for different integer sizes
        if (size == 8) return int8(temp);
        if (size == 16) return int16(temp);
        if (size == 24) return int24(temp);
        if (size == 32) return int32(temp);
        if (size == 40) return int40(temp);
        if (size == 48) return int48(temp);
        if (size == 56) return int56(temp);
        if (size == 64) return int64(temp);
        if (size == 72) return int72(temp);
        if (size == 80) return int80(temp);
        if (size == 88) return int88(temp);
        if (size == 96) return int96(temp);
        if (size == 104) return int104(temp);
        if (size == 112) return int112(temp);
        if (size == 120) return int120(temp);
        if (size == 128) return int128(temp);
        if (size == 136) return int136(temp);
        if (size == 144) return int144(temp);
        if (size == 152) return int152(temp);
        if (size == 160) return int160(temp);
        if (size == 168) return int168(temp);
        if (size == 176) return int176(temp);
        if (size == 184) return int184(temp);
        if (size == 192) return int192(temp);
        if (size == 200) return int200(temp);
        if (size == 208) return int208(temp);
        if (size == 216) return int216(temp);
        if (size == 224) return int224(temp);
        if (size == 232) return int232(temp);
        if (size == 240) return int240(temp);
        if (size == 248) return int248(temp);
        if (size == 256) return int256(temp);

        revert("Unsupported integer size");
    }
}
