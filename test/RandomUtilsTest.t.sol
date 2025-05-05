// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Test} from "forge-std/Test.sol";

import {RandomUtils} from "../src/libraries/RandomUtils.sol"; // Adjust the path as needed
import {SwapOrNotShuffle} from "../src/libraries/SwapOrNotShuffle.sol";

import {MockRandomnessConsumer} from "../src/mocks/MockRandomnessConsumer.sol";

contract RandomUtilsTest is Test {
    MockRandomnessConsumer mock;

    function setUp() public {
        mock = new MockRandomnessConsumer();
    }

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

    /// @dev Verifies that the function correctly enforces size > 0.
    function test_GetRandomIndex_ZeroSize() public {
        uint256 seed = 123456;

        // Expect revert because size is 0
        vm.expectRevert("Size must be > 0");
        mock.getRandomIndex(seed, 0);
    }

    function test_GetRandomIndices_SizeLessThanNumberOfRequiredIndices() public {
        uint256 seed = 123456;

        vm.expectRevert("Cannot pick more elements than available");
        mock.getNRandomIndices(seed, 0, 1);

        vm.expectRevert("Cannot pick more elements than available");
        mock.getNRandomIndices(seed, 5, 10);
    }

    function test_GetModdedValue_ZeroMod() public {
        uint256 seed = 123456;

        vm.expectRevert("Mod must be greater than 0");
        mock.getModdedValue(seed, 0);
    }

    function test_GetSignedModdedValue_ZeroMod() public {
        uint256 seed = 123456;

        vm.expectRevert("Mod must be greater than 0");
        mock.getSignedModdedValue(seed, 0);
    }

    function test_GetNextIntInRange_MinGreaterThanMax() public {
        uint256 seed = 123456;
        int256 min = 255;
        int256 max = type(int256).min;

        vm.expectRevert("Invalid range");
        mock.getNextIntInRange(seed, min, max);
    }

    function test_GetNextUintInRange_MinGreaterThanMax() public {
        uint256 seed = 123456;
        uint256 min = 255;
        uint256 max = type(uint256).min;

        vm.expectRevert("Invalid range");
        mock.getNextUintInRange(seed, min, max);
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
