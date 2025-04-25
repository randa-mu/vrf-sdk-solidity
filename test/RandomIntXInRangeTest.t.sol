// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "forge-std/Test.sol";

import {RandomIntXInRange} from "../src/libraries/RandomIntXInRange.sol";

contract RandomIntXInRangeTest is Test {
    function test_NextInt8InRangeBasic() public pure {
        int8 min = -10;
        int8 max = 10;
        uint256 seed = 123456;

        int8 result = RandomIntXInRange.nextInt8InRange(seed, min, max);
        assertGe(result, min);
        assertLe(result, max);
    }
}
