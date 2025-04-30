// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {RandomUtils} from "../libraries/RandomUtils.sol";
import {RandomIntXInRange} from "../libraries/RandomIntXInRange.sol";
import {RandomUintXInRange} from "../libraries/RandomUintXInRange.sol";
import {SwapOrNotShuffle} from "../libraries/SwapOrNotShuffle.sol";

/// @title MockRandomLibsUser
/// @notice Simple mock contract to expose library functions for testing.
contract MockRandomnessConsumer {
    using RandomUtils for uint256;
    using RandomIntXInRange for uint256;
    using RandomUintXInRange for uint256;
    using SwapOrNotShuffle for uint64;

    function getRandomIndex(uint256 seed, uint64 size) external pure returns (uint64) {
        return seed.getRandomIndex(size);
    }

    function getNRandomIndices(uint256 seed, uint64 size, uint64 n) external pure returns (uint64[] memory picked) {
        return seed.getNRandomIndices(size, n);
    }

    function getModdedValue(uint256 seed, uint64 mod) external pure returns (uint64 result) {
        return seed.getModdedValue(mod);
    }

    function getSignedModdedValue(uint256 seed, int64 mod) external pure returns (int64 result) {
        return seed.getSignedModdedValue(mod);
    }

    function getNextIntInRange(uint256 seed, int256 min, int256 max) external pure returns (int256) {
        return seed.nextIntInRange(min, max);
    }

    function getNextUintInRange(uint256 seed, uint256 min, uint256 max) external pure returns (uint256) {
        return seed.nextUintInRange(min, max);
    }

    function computeShuffledIndex(uint64 index, uint64 count, uint256 seed) external pure returns (uint64) {
        return SwapOrNotShuffle.computeShuffledIndex(index, count, seed);
    }

    function shuffleIndices(uint64 count, uint256 seed) external pure returns (uint64[] memory) {
        return SwapOrNotShuffle.shuffleIndices(count, seed);
    }

    function callBytesToUint64(bytes memory input) external view returns (uint64) {
        return SwapOrNotShuffle.bytesToUint64(input);
    }
}
