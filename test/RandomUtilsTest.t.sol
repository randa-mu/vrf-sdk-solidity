// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Test} from "forge-std/Test.sol";

import {RandomUtils} from "../src/libraries/RandomUtils.sol"; // Adjust the path as needed
import {SwapOrNotShuffle} from "../src/libraries/SwapOrNotShuffle.sol";

contract RandomUtilsTest is Test {
    function test_getRandomIndex() public pure {
        uint256 seed = 12345;
        uint64 size = 10;

        uint64 index = RandomUtils.getRandomIndex(seed, size);
        assertGe(index, 0, "Index should be >= 0");
        assertLt(index, size, "Index should be < size");
    }

    function test_getNRandomIndices() public pure {
        uint256 seed = 67890;
        uint64 size = 10;
        uint64 n = 3;

        uint64[] memory indices = RandomUtils.getNRandomIndices(seed, size, n);
        assertEq(indices.length, n, "Returned indices length should be equal to n");
        for (uint64 i = 0; i < n; i++) {
            assertGe(indices[i], 0, "Index should be >= 0");
            assertLt(indices[i], size, "Index should be < size");
        }
    }

    function test_getShuffledIndices() public pure {
        uint256 seed = 112233;
        uint64 size = 5;

        uint64[] memory shuffled = RandomUtils.getShuffledIndices(seed, size);
        assertEq(shuffled.length, size, "Shuffled array length should be equal to size");
        for (uint64 i = 0; i < size; i++) {
            assertGe(shuffled[i], 0, "Index should be >= 0");
            assertLt(shuffled[i], size, "Index should be < size");
        }
    }

    function test_getModdedValue() public pure {
        uint256 seed = 123456;
        uint64 mod = 100;

        uint64 result = RandomUtils.getModdedValue(seed, mod);
        assertGe(result, 0, "Modded value should be >= 0");
        assertLt(result, mod, "Modded value should be < mod");
    }

    function test_getSignedModdedValue() public pure {
        uint256 seed = 654321;
        int64 mod = 100;

        int64 result = RandomUtils.getSignedModdedValue(seed, mod);
        assertGe(result, -mod + 1, "Signed modded value should be >= min bound");
        assertLe(result, mod - 1, "Signed modded value should be <= max bound");
    }

    // Fuzz test for getRandomIndex with multiple random sizes and seeds
    function test_getRandomIndexFuzz() public view {
        for (uint256 i = 0; i < 10; i++) {
            /// @notice Since the VM version paris, "difficulty" was replaced by "prevrandao", which now returns a random number based on the beacon chain.
            uint256 seed = uint256(keccak256(abi.encodePacked(block.timestamp, block.prevrandao, i)));
            uint64 size = uint64((seed % 100) + 1); // Size between 1 and 100

            uint64 index = RandomUtils.getRandomIndex(seed, size);
            assertGe(index, 0, "Index should be >= 0");
            assertLt(index, size, "Index should be < size");
        }
    }

    // Fuzz test for getNRandomIndices with random size and n
    function test_getNRandomIndicesFuzz() public view {
        for (uint256 i = 0; i < 10; i++) {
            uint256 seed = uint256(keccak256(abi.encodePacked(block.timestamp, block.prevrandao, i)));
            uint64 size = uint64((seed % 100) + 1); // Size between 1 and 100
            uint64 n = uint64((seed % size) + 1); // n between 1 and size

            uint64[] memory indices = RandomUtils.getNRandomIndices(seed, size, n);
            assertEq(indices.length, n, "Returned indices length should be equal to n");
            for (uint64 j = 0; j < n; j++) {
                assertGe(indices[j], 0, "Index should be >= 0");
                assertLt(indices[j], size, "Index should be < size");
            }
        }
    }

    // Fuzz test for getShuffledIndices with different sizes
    function test_getShuffledIndicesFuzz() public view {
        for (uint256 i = 0; i < 10; i++) {
            uint256 seed = uint256(keccak256(abi.encodePacked(block.timestamp, block.prevrandao, i)));
            uint64 size = uint64((seed % 100) + 1); // Size between 1 and 100

            uint64[] memory shuffled = RandomUtils.getShuffledIndices(seed, size);
            assertEq(shuffled.length, size, "Shuffled array length should be equal to size");
            for (uint64 j = 0; j < size; j++) {
                assertGe(shuffled[j], 0, "Index should be >= 0");
                assertLt(shuffled[j], size, "Index should be < size");
            }
        }
    }
}
