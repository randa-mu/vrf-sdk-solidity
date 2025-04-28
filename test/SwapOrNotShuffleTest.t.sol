// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Test} from "forge-std/Test.sol";

import {MockSwapOrNotShuffleUser} from "../src/mocks/MockSwapOrNotShuffleUser.sol";

/// @title SwapOrNotShuffleTest
/// @notice Tests the SwapOrNotShuffle library via a mock wrapper contract.
contract SwapOrNotShuffleTest is Test {
    MockSwapOrNotShuffleUser mock;

    function setUp() public {
        mock = new MockSwapOrNotShuffleUser();
    }

    /// @dev Test to ensure that the shuffled index is deterministic for the same index and seed.
    function test_ShuffledIndexDeterministic() public view {
        uint64 index = 3;
        uint64 count = 10;
        uint256 seed = uint256(keccak256("test-seed"));

        uint64 result1 = mock.computeShuffledIndex(index, count, seed);
        uint64 result2 = mock.computeShuffledIndex(index, count, seed);

        /// @notice Verify that the shuffled index is deterministic for the same input parameters
        /// @dev The result should be identical across calls with the same `index` and `seed`
        assertEq(result1, result2, "Shuffled index should be deterministic for same seed");
    }

    /// @dev Test to ensure that different seeds produce different shuffled index results.
    function test_ShuffledIndexDifferentSeed() public view {
        uint64 index = 3;
        uint64 count = 10;

        uint64 result1 = mock.computeShuffledIndex(index, count, uint256(keccak256("seed1")));
        uint64 result2 = mock.computeShuffledIndex(index, count, uint256(keccak256("seed2")));

        /// @notice Verify that different seeds produce different results
        /// @dev The result for `seed1` should not equal the result for `seed2`
        assertTrue(result1 != result2, "Different seeds should produce different results (likely)");
    }

    /// @dev Test to ensure that the full shuffle produces a result of the correct length.
    function test_FullShuffleLength() public view {
        uint64 count = 25;
        uint256 seed = uint256(keccak256("length-seed"));
        uint64[] memory shuffled = mock.shuffleIndices(count, seed);

        /// @notice Verify that the shuffled list has the correct length
        /// @dev The shuffled list should have the same length as the number of indices to shuffle
        assertEq(shuffled.length, count, "Shuffled list length should match indexCount");
    }

    /// @dev Test to ensure that the full shuffle produces unique shuffled indices.
    function test_FullShuffleUniqueness() public view {
        uint64 count = 50;
        uint256 seed = uint256(keccak256("unique-seed"));
        uint64[] memory shuffled = mock.shuffleIndices(count, seed);

        bool[] memory seen = new bool[](count);
        for (uint64 i = 0; i < count; i++) {
            /// @notice Ensure that each shuffled index is unique and within bounds
            require(shuffled[i] < count, "Index out of bounds");
            require(!seen[shuffled[i]], "Duplicate index found");
            seen[shuffled[i]] = true;
        }
    }

    /// @dev Test to check that the function reverts if an index is larger than the index count.
    function test_RevertsIfIndexTooLarge() public {
        uint64 index = 10;
        uint64 count = 5;
        uint256 seed = 12345;

        /// @notice Verify that the function reverts when the index is greater than or equal to the count
        /// @dev The `computeShuffledIndex` function should revert when `index >= indexCount`
        vm.expectRevert("Index must be < indexCount");
        mock.computeShuffledIndex(index, count, seed);
    }

    /// @dev Fuzz test to verify that computeShuffledIndex never reverts with valid index/count and arbitrary seed
    function testFuzz_ComputeShuffledIndex(uint64 index, uint64 count, uint256 seed) public view {
        count = uint64(bound(uint256(count), 1, 1000)); // Avoid zero and too large indexCount for gas/loop reasons
        index = uint64(bound(uint256(index), 0, count - 1)); // Ensure valid index

        uint64 result = mock.computeShuffledIndex(index, count, seed);
        assertLt(result, count, "Result must be within index count");
    }

    /// @dev Fuzz test to check that shuffleIndices returns unique and bounded results for arbitrary seeds
    function testFuzz_ShuffleIndices(uint64 count, uint256 seed) public view {
        count = uint64(bound(uint256(count), 2, 100)); // Keep it reasonable for gas and logic
        uint64[] memory result = mock.shuffleIndices(count, seed);

        assertEq(result.length, count, "Shuffled result should match count");

        /// @notice Ensure all indices are unique and in bounds
        bool[] memory seen = new bool[](count);
        for (uint64 i = 0; i < count; i++) {
            assertLt(result[i], count, "Index out of bounds");
            assertTrue(!seen[result[i]], "Duplicate index found");
            seen[result[i]] = true;
        }
    }

    function test_BytesToUint64_CorrectConversion() public view {
        bytes memory input = hex"0102030405060708";
        uint64 expected = 0x0102030405060708;
        uint64 result = mock.callBytesToUint64(input);

        assertEq(result, expected, "Incorrect uint64 conversion from bytes");
    }

    function test_BytesToUint64_InvalidLength() public {
        bytes memory input = hex"01020304"; // Only 4 bytes

        // Expect revert due to invalid length
        vm.expectRevert("Invalid bytes length");
        mock.callBytesToUint64(input);
    }

    function test_BytesToUint64_Fuzz(bytes memory input) public view {
        // Skip invalid inputs
        /// manual approach will be - if (input.length < 8) return;
        /// @dev `vm.assume` filters the fuzzed inputs so that only those with length >= 8 continue execution
        vm.assume(input.length >= 8); 

        uint64 result = mock.callBytesToUint64(input);

        // No assertion about exact value
        // Only checking to ensure it doesn't revert with valid input
        assertTrue(result >= 0, "Result should be a valid uint64 number"); 
    }

    function testFuzz_BytesToUint64_InvalidLength(bytes memory input) public {
        /// @dev `vm.assume` filters the fuzzed inputs so that only those with length < 8 continue execution
        vm.assume(input.length < 8);

        vm.expectRevert("Invalid bytes length");
        mock.callBytesToUint64(input);
    }

}
