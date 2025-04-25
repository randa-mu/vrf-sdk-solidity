// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/// @title SwapOrNotShuffle
/// @dev Implements a deterministic, memory-efficient shuffle inspired by the Ethereum Beacon Chain's swap-or-not shuffle algorithm.
/// @dev Accepts a uint256 seed, which is internally converted to bytes32.
/// Ethereum 2 uses a “swap-or-not” shuffle,
/// to randomly assign validators to committees and choose block proposers.
/// Swap-or-not is an oblivious shuffle: it can be applied to single list elements and subsets.
/// This makes it ideal for supporting light clients.
/// The swap-or-not shuffle can tell you the destination index (or, conversely, the origin index) of a single list
/// element.
/// Security: Fully deterministic, suitable for consensus-critical logic (like validator or committee shuffling).
/// Efficiency: Avoids the need for random access or large intermediate state — minimal memory, linear time.
/// Gas-Optimized: In-place shuffling, works well within EVM gas constraints for small to medium sets.
/// References:
///     1. https://github.com/ethereum/consensus-specs/blob/v1.3.0/specs/phase0/beacon-chain.md#misc-2
///     2. https://eth2book.info/capella/book.pdf
///     3. https://link.springer.com/content/pdf/10.1007/978-3-642-32009-5_1.pdf
library SwapOrNotShuffle {
    /// @notice Number of shuffle rounds, as defined in the Ethereum Beacon Chain spec.
    /// @notice Reference: https://github.com/ethereum/consensus-specs/blob/v1.3.0/specs/phase0/beacon-chain.md#misc-1
    uint8 public constant SHUFFLE_ROUND_COUNT = 90;

    /// @notice Converts a uint256 to bytes32 (big-endian)
    /// @param x The uint256 value to convert.
    /// @return result The bytes32 representation of the input.
    function uint256ToBytes32(uint256 x) internal pure returns (bytes32 result) {
        result = bytes32(x);
    }

    /// @notice Converts the first 8 bytes of a byte array to a uint64
    /// @dev Assumes `b.length >= 8`, reverts otherwise.
    /// @param b Byte array (must be at least 8 bytes)
    /// @return number The resulting uint64 value.
    function bytesToUint64(bytes memory b) internal pure returns (uint64 number) {
        require(b.length >= 8, "Invalid bytes length");
        for (uint256 i = 0; i < 8; i++) {
            number = (number << 8) | uint8(b[i]);
        }
    }

    /// @notice Computes a shuffled index using the swap-or-not algorithm.
    /// @dev Implements the Beacon Chain spec for shuffling.
    /// @param index The original index to shuffle.
    /// @param indexCount Total number of indices (i.e., size of validator list).
    /// @param seed A uint256 seed used for shuffling (converted to bytes32 internally).
    /// @return The shuffled index.
    function computeShuffledIndex(uint64 index, uint64 indexCount, uint256 seed) internal pure returns (uint64) {
        require(index < indexCount, "Index must be < indexCount");

        bytes32 seedBytes = uint256ToBytes32(seed);

        for (uint8 round = 0; round < SHUFFLE_ROUND_COUNT; round++) {
            // Calculate pivot
            bytes32 roundHash = keccak256(abi.encodePacked(seedBytes, round));
            uint64 pivot = bytesToUint64(abi.encodePacked(roundHash)) % indexCount;

            // Calculate flip and max position
            uint64 flip = (pivot + indexCount - index) % indexCount;
            uint64 position = index > flip ? index : flip;

            // Get source hash
            bytes32 source = keccak256(abi.encodePacked(seedBytes, round, uint32(position / 256)));

            // Extract bit
            uint8 byteVal = uint8(source[(position % 256) / 8]);
            uint8 bit = (byteVal >> (position % 8)) & 1;

            // Swap if needed
            if (bit == 1) {
                index = flip;
            }
        }

        return index;
    }

    /// @notice Generates the full list of shuffled indices.
    /// @dev Calls `computeShuffledIndex` on every index.
    /// @param indexCount Number of indices to shuffle.
    /// @param seed The random seed as uint256 (converted internally to bytes32).
    /// @return shuffled An array of shuffled indices.
    function shuffleIndices(uint64 indexCount, uint256 seed) internal pure returns (uint64[] memory shuffled) {
        shuffled = new uint64[](indexCount);
        for (uint64 i = 0; i < indexCount; i++) {
            shuffled[i] = computeShuffledIndex(i, indexCount, seed);
        }
    }
}
