// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Test} from "forge-std/Test.sol";

import {RandomIntXInRange} from "../src/libraries/RandomIntXInRange.sol";

contract RandomIntXInRangeTest is Test {
    function test_NextInt8InRangeBasic() public pure {
        int8 min = -10;
        int8 max = 10;
        uint256 seed = 123456;

        int8 result = RandomIntXInRange.nextInt8InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt16InRange() public pure {
        int16 min = -31120;
        int16 max = 31120;

        uint256 seed = 123456;
        int16 result = RandomIntXInRange.nextInt16InRange(seed, min, max);
        assertLe(result, max, "result should be <= max");
        assertGe(result, min, "result should be >= min");
    }

    function test_NextInt24InRange() public pure {
        int24 min = -8388608;
        int24 max = 8388607;
        uint256 seed = 90;
        int24 result = RandomIntXInRange.nextInt24InRange(seed, min, max);
        assertLe(result, max, "result should be <= max");
        assertGe(result, min, "result should be >= min");
    }

    function test_NextInt24InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(24)));
        int24 min = int24(-500);
        int24 max = int24(500);

        int24 result = RandomIntXInRange.nextInt24InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt32InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(32)));
        int32 min = int32(-1_000_000);
        int32 max = int32(1_000_000);

        int32 result = RandomIntXInRange.nextInt32InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt40InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(40)));
        int40 min = int40(-5_000_000_000);
        int40 max = int40(5_000_000_000);

        int40 result = RandomIntXInRange.nextInt40InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt48InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(48)));
        int48 min = int48(-1e10);
        int48 max = int48(1e10);

        int48 result = RandomIntXInRange.nextInt48InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt56InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(56)));
        int56 min = int56(-1e12);
        int56 max = int56(1e12);

        int56 result = RandomIntXInRange.nextInt56InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt64InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(64)));
        int64 min = int64(-1e15);
        int64 max = int64(1e15);

        int64 result = RandomIntXInRange.nextInt64InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt72InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(72)));
        int72 min = int72(-1e17);
        int72 max = int72(1e17);

        int72 result = RandomIntXInRange.nextInt72InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt80InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(80)));
        int80 min = int80(-1e18);
        int80 max = int80(1e18);

        int80 result = RandomIntXInRange.nextInt80InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt88InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(88)));
        int88 min = int88(-1e19);
        int88 max = int88(1e19);

        int88 result = RandomIntXInRange.nextInt88InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt96InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(96)));
        int96 min = int96(-1e20);
        int96 max = int96(1e20);

        int96 result = RandomIntXInRange.nextInt96InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt104InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(104)));
        int104 min = int104(-1e21);
        int104 max = int104(1e21);

        int104 result = RandomIntXInRange.nextInt104InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt112InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(112)));
        int112 min = int112(-1e22);
        int112 max = int112(1e22);

        int112 result = RandomIntXInRange.nextInt112InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt120InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(120)));
        int120 min = int120(-1e23);
        int120 max = int120(1e23);

        int120 result = RandomIntXInRange.nextInt120InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt128InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(128)));
        int128 min = int128(-1e24);
        int128 max = int128(1e24);

        int128 result = RandomIntXInRange.nextInt128InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt136InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(136)));
        int136 min = int136(-1e25);
        int136 max = int136(1e25);

        int136 result = RandomIntXInRange.nextInt136InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt144InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(144)));
        int144 min = int144(-1e26);
        int144 max = int144(1e26);

        int144 result = RandomIntXInRange.nextInt144InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt152InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(152)));
        int152 min = int152(-1e27);
        int152 max = int152(1e27);

        int152 result = RandomIntXInRange.nextInt152InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt160InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(160)));
        int160 min = int160(-1e28);
        int160 max = int160(1e28);

        int160 result = RandomIntXInRange.nextInt160InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt168InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(168)));
        int168 min = int168(-1e29);
        int168 max = int168(1e29);

        int168 result = RandomIntXInRange.nextInt168InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt176InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(176)));
        int176 min = int176(-1e30);
        int176 max = int176(1e30);

        int176 result = RandomIntXInRange.nextInt176InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt184InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(184)));
        int184 min = int184(-1e31);
        int184 max = int184(1e31);

        int184 result = RandomIntXInRange.nextInt184InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt192InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(192)));
        int192 min = int192(-1e32);
        int192 max = int192(1e32);

        int192 result = RandomIntXInRange.nextInt192InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt200InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(200)));
        int200 min = int200(-1e33);
        int200 max = int200(1e33);

        int200 result = RandomIntXInRange.nextInt200InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt208InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(208)));
        int208 min = int208(-1e34);
        int208 max = int208(1e34);

        int208 result = RandomIntXInRange.nextInt208InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt216InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(216)));
        int216 min = int216(-1e35);
        int216 max = int216(1e35);

        int216 result = RandomIntXInRange.nextInt216InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt224InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(224)));
        int224 min = int224(-1e36);
        int224 max = int224(1e36);

        int224 result = RandomIntXInRange.nextInt224InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt232InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(232)));
        int232 min = int232(-1e37);
        int232 max = int232(1e37);

        int232 result = RandomIntXInRange.nextInt232InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt240InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(240)));
        int240 min = int240(-1e38);
        int240 max = int240(1e38);

        int240 result = RandomIntXInRange.nextInt240InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt248InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(248)));
        int248 min = int248(-1e39);
        int248 max = int248(1e39);

        int248 result = RandomIntXInRange.nextInt248InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    function test_NextInt256InRangeBasic() public pure {
        uint256 seed = uint256(keccak256(abi.encode(256)));
        int256 min = -1e40;
        int256 max = 1e40;

        int256 result = RandomIntXInRange.nextInt256InRange(seed, min, max);
        assertGe(result, min, "result should be >= to min");
        assertLe(result, max, "result should <= to max");
    }

    /// @notice some edge cases
    function test_NextInt16EdgeSameMinMax() public pure {
        int16 min = 1234;
        int16 max = 1234;
        uint256 seed = 42;

        int16 result = RandomIntXInRange.nextInt16InRange(seed, min, max);
        assertEq(result, min, "result should be equal to min");
    }

    function test_NextInt32EdgeZeroRange() public pure {
        int32 min = 0;
        int32 max = 0;
        uint256 seed = 42;

        int32 result = RandomIntXInRange.nextInt32InRange(seed, min, max);
        assertEq(result, 0, "result should be equal to 0");
    }

    function test_NextInt64EdgeNegativePositive() public pure {
        int64 min = -4;
        int64 max = 5;
        uint256 seed = 9999;

        int64 result = RandomIntXInRange.nextInt64InRange(seed, min, max);
        assertGe(result, min, "result should be greater than or equal to min");
        assertLe(result, max, "result should less than or equal to max");
    }

    function test_NextInt128EdgeFullRange() public pure {
        int128 min = type(int128).min;
        int128 max = type(int128).max;
        uint256 seed = 7777;

        int128 result = RandomIntXInRange.nextInt128InRange(seed, min, max);
        assertGe(result, min, "result should be greater than or equal to min");
        assertLe(result, max, "result should less than or equal to max");
    }

    function test_NextInt256EdgeSmallRange() public pure {
        int256 min = 999999;
        int256 max = 1_000_000;
        uint256 seed = 2;

        int256 result = RandomIntXInRange.nextInt256InRange(seed, min, max);
        assertGe(result, min, "result should be greater than or equal to min");
        assertLe(result, max, "result should less than or equal to max");
    }
}
