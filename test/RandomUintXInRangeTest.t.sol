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

    function test_NextUint24InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(24)));
        uint24 min = 100;
        uint24 max = 1000;

        uint24 result = RandomUintXInRange.nextUint24InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint32InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(32)));
        uint32 min = 1_000;
        uint32 max = 1_000_000;

        uint32 result = RandomUintXInRange.nextUint32InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint40InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(40)));
        uint40 min = 5_000_000;
        uint40 max = 50_000_000;

        uint40 result = RandomUintXInRange.nextUint40InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint48InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(48)));
        uint48 min = 10_000_000;
        uint48 max = 1e10;

        uint48 result = RandomUintXInRange.nextUint48InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint56InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(56)));
        uint56 min = 1e10;
        uint56 max = 1e12;

        uint56 result = RandomUintXInRange.nextUint56InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint64InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(64)));
        uint64 min = 1e12;
        uint64 max = 1e15;

        uint64 result = RandomUintXInRange.nextUint64InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint72InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(72)));
        uint72 min = 1e15;
        uint72 max = 1e17;

        uint72 result = RandomUintXInRange.nextUint72InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint80InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(80)));
        uint80 min = 1e17;
        uint80 max = 1e18;

        uint80 result = RandomUintXInRange.nextUint80InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint88InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(88)));
        uint88 min = 1e18;
        uint88 max = 1e19;

        uint88 result = RandomUintXInRange.nextUint88InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint96InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(96)));
        uint96 min = 1e19;
        uint96 max = 1e20;

        uint96 result = RandomUintXInRange.nextUint96InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint104InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(104)));
        uint104 min = 1e20;
        uint104 max = 1e21;

        uint104 result = RandomUintXInRange.nextUint104InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint112InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(112)));
        uint112 min = 1e21;
        uint112 max = 1e22;

        uint112 result = RandomUintXInRange.nextUint112InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint120InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(120)));
        uint120 min = 1e22;
        uint120 max = 1e23;

        uint120 result = RandomUintXInRange.nextUint120InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint128InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(128)));
        uint128 min = 1e23;
        uint128 max = 1e24;

        uint128 result = RandomUintXInRange.nextUint128InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint136InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(136)));
        uint136 min = 1e24;
        uint136 max = 1e25;

        uint136 result = RandomUintXInRange.nextUint136InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint144InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(144)));
        uint144 min = 1e25;
        uint144 max = 1e26;

        uint144 result = RandomUintXInRange.nextUint144InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint152InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(152)));
        uint152 min = 1e26;
        uint152 max = 1e27;

        uint152 result = RandomUintXInRange.nextUint152InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint160InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(160)));
        uint160 min = 1e27;
        uint160 max = 1e28;

        uint160 result = RandomUintXInRange.nextUint160InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint168InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(168)));
        uint168 min = 1e28;
        uint168 max = 1e29;

        uint168 result = RandomUintXInRange.nextUint168InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint176InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(176)));
        uint176 min = 1e29;
        uint176 max = 1e30;

        uint176 result = RandomUintXInRange.nextUint176InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint184InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(184)));
        uint184 min = 1e30;
        uint184 max = 1e31;

        uint184 result = RandomUintXInRange.nextUint184InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint192InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(192)));
        uint192 min = 1e31;
        uint192 max = 1e32;

        uint192 result = RandomUintXInRange.nextUint192InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint200InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(200)));
        uint200 min = 1e32;
        uint200 max = 1e33;

        uint200 result = RandomUintXInRange.nextUint200InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint208InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(208)));
        uint208 min = 1e33;
        uint208 max = 1e34;

        uint208 result = RandomUintXInRange.nextUint208InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint216InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(216)));
        uint216 min = 1e34;
        uint216 max = 1e35;

        uint216 result = RandomUintXInRange.nextUint216InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint224InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(224)));
        uint224 min = 1e35;
        uint224 max = 1e36;

        uint224 result = RandomUintXInRange.nextUint224InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint232InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(232)));
        uint232 min = 1e36;
        uint232 max = 1e37;

        uint232 result = RandomUintXInRange.nextUint232InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint240InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(240)));
        uint240 min = 1e37;
        uint240 max = 1e38;

        uint240 result = RandomUintXInRange.nextUint240InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint248InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(248)));
        uint248 min = 1e38;
        uint248 max = 1e39;

        uint248 result = RandomUintXInRange.nextUint248InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextUint256InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(256)));
        uint256 min = 1e39;
        uint256 max = 1e40;

        uint256 result = RandomUintXInRange.nextUint256InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }
}
