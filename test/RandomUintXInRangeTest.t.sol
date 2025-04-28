// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Test} from "forge-std/Test.sol";

import {RandomUintXInRange} from "../src/libraries/RandomUintXInRange.sol";

contract RandomUintXInRangeTest is Test {
    function test_NextUint8InRangeBasic() public pure {
        uint8 min = 1;
        uint8 max = 200;
        uint256 seed = 654321;

        uint8 result = RandomUintXInRange.nextUint8InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint16InRangeBasic() public pure {
        uint16 min = 0;
        uint16 max = 2000;
        uint256 seed = 654321;

        uint16 result = RandomUintXInRange.nextUint16InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }
}
