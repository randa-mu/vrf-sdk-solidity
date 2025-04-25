// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import {SwapOrNotShuffle} from "./SwapOrNotShuffle.sol";

/// @title RandomnessUtils
/// @notice Utility functions built on top of the SwapOrNotShuffle library for random selections.
/// @dev This library depends on deterministic shuffle output from SwapOrNotShuffle.
library RandomnessUtils {
    using SwapOrNotShuffle for uint256;

    /// @notice Picks a random index in range [0, size) using swap-or-not shuffled list
    /// @notice Can be used to pick one random element from an int or uint array for supported integer types
    /// @param seed The seed to shuffle
    /// @param size The number of indices
    /// @return index A pseudo-random index from the list
    function getRandomIndex(uint256 seed, uint64 size) internal pure returns (uint64 index) {
        require(size > 0, "Size must be > 0");
        uint64[] memory shuffled = SwapOrNotShuffle.shuffleIndices(size, seed);
        return shuffled[0]; // Pick the first shuffled index
    }

    /// @notice Picks `n` unique shuffled indices using swap-or-not shuffle
    /// @notice Can be used to pick n random elements from an int or uint array for supported integer types
    /// @param seed The seed to shuffle
    /// @param size The full list size
    /// @param n Number of elements to pick
    /// @return picked An array of n shuffled indices
    function getNRandomIndices(uint256 seed, uint64 size, uint64 n) internal pure returns (uint64[] memory picked) {
        require(n <= size, "Cannot pick more elements than available");

        uint64[] memory shuffled = SwapOrNotShuffle.shuffleIndices(size, seed);
        picked = new uint64[](n);
        for (uint64 i = 0; i < n; i++) {
            picked[i] = shuffled[i];
        }
    }

    /// @notice Returns the full shuffled list of indices from 0 to size-1
    /// @notice Can be used to shuffle an integer array for supported integer types
    /// @param seed The shuffle seed
    /// @param size The total number of elements
    /// @return shuffled Full list of shuffled indices
    function getShuffledIndices(uint256 seed, uint64 size) internal pure returns (uint64[] memory shuffled) {
        return SwapOrNotShuffle.shuffleIndices(size, seed);
    }

    /// @notice Applies modulus to a seed for generating a bounded pseudo-random value
    /// @param seed The seed value
    /// @param mod The modulus
    /// @return result `seed % mod`
    function getModdedValue(uint256 seed, uint64 mod) internal pure returns (uint64 result) {
        require(mod > 0, "Mod must be > 0");
        result = uint64(seed % mod);
    }

    /// @notice Applies modulus to a seed for generating a bounded pseudo-random signed value
    /// @param seed The seed value
    /// @param mod The modulus
    /// @return result Pseudo-random value in the range [-mod + 1, mod - 1]
    function getSignedModdedValue(uint256 seed, int64 mod) internal pure returns (int64 result) {
        require(mod > 0, "Mod must be > 0");
        uint64 unsignedMod = uint64(uint64(mod)); // Safe conversion
        uint64 uval = uint64(seed % unsignedMod); // Always in [0, mod)
        bool isNegative = (seed & 1) == 1; // Use LSB to decide sign
        result = isNegative ? -int64(uval) : int64(uval);
    }

    /// @notice Returns a random number in range [min, max] inclusive
    /// @param seed The seed value
    /// @param min The lower bound
    /// @param max The upper bound
    /// @return A pseudo-random number in the given range
    function getValueInRange(uint256 seed, uint64 min, uint64 max) internal pure returns (uint64) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint64(seed % (max - min + 1));
    }

    /// @notice Returns a pseudo-random signed integer in range [min, max] inclusive
    /// @param seed The seed value
    /// @param min The lower bound (inclusive)
    /// @param max The upper bound (inclusive)
    /// @return A pseudo-random int64 in the given range
    function getSignedValueInRange(uint256 seed, int64 min, int64 max) internal pure returns (int64) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        uint64 span = uint64(uint64(max - min)) + 1;
        return min + int64(uint64(seed % span));
    }
}
