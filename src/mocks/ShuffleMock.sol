// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "../libraries/SwapOrNotShuffle.sol";

/// @title ShuffleMock
/// @notice Simple mock contract to expose swap-or-not shuffle library functions for testing.
contract ShuffleMock {
    using SwapOrNotShuffle for uint64;

    function computeShuffledIndex(uint64 index, uint64 count, uint256 seed) external pure returns (uint64) {
        return SwapOrNotShuffle.computeShuffledIndex(index, count, seed);
    }

    function shuffleIndices(uint64 count, uint256 seed) external pure returns (uint64[] memory) {
        return SwapOrNotShuffle.shuffleIndices(count, seed);
    }
}
