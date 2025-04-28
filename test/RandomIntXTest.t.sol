// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Test} from "forge-std/Test.sol";

import {RandomIntX} from "../src/libraries/RandomIntX.sol";

contract RandomIntXTest is Test {
    function test_NextInt8() public pure {
        uint256 seed = 1223;
        int8 result = RandomIntX.nextInt8(seed);
        assertGe(result, type(int8).min, "invalid int8");
        assertLe(result, type(int8).max, "invalid int8");
    }

    function test_NextInt16() public pure {
        uint256 seed = 4567;
        int16 result = RandomIntX.nextInt16(seed);
        assertGe(result, type(int16).min, "invalid int16");
        assertLe(result, type(int16).max, "invalid int16");
    }

    function test_NextInt24() public pure {
        uint256 seed = 7890;
        int24 result = RandomIntX.nextInt24(seed);
        assertGe(result, type(int24).min, "invalid int24");
        assertLe(result, type(int24).max, "invalid int24");
    }

    function test_NextInt32() public pure {
        uint256 seed = 112233;
        int32 result = RandomIntX.nextInt32(seed);
        assertGe(result, type(int32).min, "invalid int32");
        assertLe(result, type(int32).max, "invalid int32");
    }

    function test_NextInt40() public pure {
        uint256 seed = 445566;
        int40 result = RandomIntX.nextInt40(seed);
        assertGe(result, type(int40).min, "invalid int40");
        assertLe(result, type(int40).max, "invalid int40");
    }

    function test_NextInt48() public pure {
        uint256 seed = 778899;
        int48 result = RandomIntX.nextInt48(seed);
        assertGe(result, type(int48).min, "invalid int48");
        assertLe(result, type(int48).max, "invalid int48");
    }

    function test_NextInt56() public pure {
        uint256 seed = 123456;
        int56 result = RandomIntX.nextInt56(seed);
        assertGe(result, type(int56).min, "invalid int56");
        assertLe(result, type(int56).max, "invalid int56");
    }

    function test_NextInt64() public pure {
        uint256 seed = 987654;
        int64 result = RandomIntX.nextInt64(seed);
        assertGe(result, type(int64).min, "invalid int64");
        assertLe(result, type(int64).max, "invalid int64");
    }

    function test_NextInt72() public pure {
        uint256 seed = 135791;
        int72 result = RandomIntX.nextInt72(seed);
        assertGe(result, type(int72).min, "invalid int72");
        assertLe(result, type(int72).max, "invalid int72");
    }

    function test_NextInt80() public pure {
        uint256 seed = 246802;
        int80 result = RandomIntX.nextInt80(seed);
        assertGe(result, type(int80).min, "invalid int80");
        assertLe(result, type(int80).max, "invalid int80");
    }

    function test_NextInt88() public pure {
        uint256 seed = 112358;
        int88 result = RandomIntX.nextInt88(seed);
        assertGe(result, type(int88).min, "invalid int88");
        assertLe(result, type(int88).max, "invalid int88");
    }

    function test_NextInt96() public pure {
        uint256 seed = 31459;
        int96 result = RandomIntX.nextInt96(seed);
        assertGe(result, type(int96).min, "invalid int96");
        assertLe(result, type(int96).max, "invalid int96");
    }

    function test_NextInt104() public pure {
        uint256 seed = 271828;
        int104 result = RandomIntX.nextInt104(seed);
        assertGe(result, type(int104).min, "invalid int104");
        assertLe(result, type(int104).max, "invalid int104");
    }

    function test_NextInt112() public pure {
        uint256 seed = 161803;
        int112 result = RandomIntX.nextInt112(seed);
        assertGe(result, type(int112).min, "invalid int112");
        assertLe(result, type(int112).max, "invalid int112");
    }

    function test_NextInt120() public pure {
        uint256 seed = 141421;
        int120 result = RandomIntX.nextInt120(seed);
        assertGe(result, type(int120).min, "invalid int120");
        assertLe(result, type(int120).max, "invalid int120");
    }

    function test_NextInt128() public pure {
        uint256 seed = 173205;
        int128 result = RandomIntX.nextInt128(seed);
        assertGe(result, type(int128).min, "invalid int128");
        assertLe(result, type(int128).max, "invalid int128");
    }

    function test_NextInt136() public pure {
        uint256 seed = 223606;
        int136 result = RandomIntX.nextInt136(seed);
        assertGe(result, type(int136).min, "invalid int136");
        assertLe(result, type(int136).max, "invalid int136");
    }

    function test_NextInt144() public pure {
        uint256 seed = 244949;
        int144 result = RandomIntX.nextInt144(seed);
        assertGe(result, type(int144).min, "invalid int144");
        assertLe(result, type(int144).max, "invalid int144");
    }

    function test_NextInt152() public pure {
        uint256 seed = 316227;
        int152 result = RandomIntX.nextInt152(seed);
        assertGe(result, type(int152).min, "invalid int152");
        assertLe(result, type(int152).max, "invalid int152");
    }

    function test_NextInt160() public pure {
        uint256 seed = 123321;
        int160 result = RandomIntX.nextInt160(seed);
        assertGe(result, type(int160).min, "invalid int160");
        assertLe(result, type(int160).max, "invalid int160");
    }

    function test_NextInt168() public pure {
        uint256 seed = 987789;
        int168 result = RandomIntX.nextInt168(seed);
        assertGe(result, type(int168).min, "invalid int168");
        assertLe(result, type(int168).max, "invalid int168");
    }

    function test_NextInt176() public pure {
        uint256 seed = 666768;
        int176 result = RandomIntX.nextInt176(seed);
        assertGe(result, type(int176).min, "invalid int176");
        assertLe(result, type(int176).max, "invalid int176");
    }

    function test_NextInt184() public pure {
        uint256 seed = 697071;
        int184 result = RandomIntX.nextInt184(seed);
        assertGe(result, type(int184).min, "invalid int184");
        assertLe(result, type(int184).max, "invalid int184");
    }

    function test_NextInt192() public pure {
        uint256 seed = 727374;
        int192 result = RandomIntX.nextInt192(seed);
        assertGe(result, type(int192).min, "invalid int192");
        assertLe(result, type(int192).max, "invalid int192");
    }

    function test_NextInt200() public pure {
        uint256 seed = 757677;
        int200 result = RandomIntX.nextInt200(seed);
        assertGe(result, type(int200).min, "invalid int200");
        assertLe(result, type(int200).max, "invalid int200");
    }

    function test_NextInt208() public pure {
        uint256 seed = 787980;
        int208 result = RandomIntX.nextInt208(seed);
        assertGe(result, type(int208).min, "invalid int208");
        assertLe(result, type(int208).max, "invalid int208");
    }

    function test_NextInt216() public pure {
        uint256 seed = 818283;
        int216 result = RandomIntX.nextInt216(seed);
        assertGe(result, type(int216).min, "invalid int216");
        assertLe(result, type(int216).max, "invalid int216");
    }

    function test_NextInt224() public pure {
        uint256 seed = 848586;
        int224 result = RandomIntX.nextInt224(seed);
        assertGe(result, type(int224).min, "invalid int224");
        assertLe(result, type(int224).max, "invalid int224");
    }

    function test_NextInt232() public pure {
        uint256 seed = type(uint256).max;
        int232 result = RandomIntX.nextInt232(seed);
        assertGe(result, type(int232).min, "invalid int232");
        assertLe(result, type(int232).max, "invalid int232");
    }

    function test_NextInt240() public pure {
        uint256 seed = type(uint256).max;
        int240 result = RandomIntX.nextInt240(seed);
        assertGe(result, type(int240).min, "invalid int240");
        assertLe(result, type(int240).max, "invalid int240");
    }

    function test_NextInt248() public pure {
        uint256 seed = type(uint256).max;
        int248 result = RandomIntX.nextInt248(seed);
        assertGe(result, type(int248).min, "invalid int248");
        assertLe(result, type(int248).max, "invalid int248");
    }

    function test_NextInt256() public pure {
        uint256 seed = type(uint256).max;
        int256 result = RandomIntX.nextInt256(seed);
        assertGe(result, type(int256).min, "invalid int256");
        assertLe(result, type(int256).max, "invalid int256");
    }
}
