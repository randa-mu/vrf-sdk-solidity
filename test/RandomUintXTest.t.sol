// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Test, console} from "forge-std/Test.sol";

import {RandomUintX} from "../src/libraries/RandomUintX.sol";

contract RandomUintXTest is Test {
    function test_NextUint8() public pure {
        uint256 seed = 1223;
        uint8 result = RandomUintX.nextUint8(seed);
        assertLe(result, type(uint8).max, "invalid uint8");
    }

    function test_NextUint16() public pure {
        uint256 seed = 4567;
        uint16 result = RandomUintX.nextUint16(seed);
        assertLe(result, type(uint16).max, "invalid uint16");
    }

    function test_NextUint24() public pure {
        uint256 seed = 7890;
        uint24 result = RandomUintX.nextUint24(seed);
        assertLe(result, type(uint24).max, "invalid uint24");
    }

    function test_NextUint32() public pure {
        uint256 seed = 112233;
        uint32 result = RandomUintX.nextUint32(seed);
        assertLe(result, type(uint32).max, "invalid uint32");
    }

    function test_NextUint40() public pure {
        uint256 seed = 445566;
        uint40 result = RandomUintX.nextUint40(seed);
        assertLe(result, type(uint40).max, "invalid uint40");
    }

    function test_NextUint48() public pure {
        uint256 seed = 778899;
        uint48 result = RandomUintX.nextUint48(seed);
        assertLe(result, type(uint48).max, "invalid uint48");
    }

    function test_NextUint56() public pure {
        uint256 seed = 123456;
        uint56 result = RandomUintX.nextUint56(seed);
        assertLe(result, type(uint56).max, "invalid uint56");
    }

    function test_NextUint64() public pure {
        uint256 seed = 987654;
        uint64 result = RandomUintX.nextUint64(seed);
        assertLe(result, type(uint64).max, "invalid uint64");
    }

    function test_NextUint72() public pure {
        uint256 seed = 135791;
        uint72 result = RandomUintX.nextUint72(seed);
        assertLe(result, type(uint72).max, "invalid uint72");
    }

    function test_NextUint80() public pure {
        uint256 seed = 246802;
        uint80 result = RandomUintX.nextUint80(seed);
        assertLe(result, type(uint80).max, "invalid uint80");
    }

    function test_NextUint88() public pure {
        uint256 seed = 112358;
        uint88 result = RandomUintX.nextUint88(seed);
        assertLe(result, type(uint88).max, "invalid uint88");
    }

    function test_NextUint96() public pure {
        uint256 seed = 31459;
        uint96 result = RandomUintX.nextUint96(seed);
        assertLe(result, type(uint96).max, "invalid uint96");
    }

    function test_NextUint104() public pure {
        uint256 seed = 271828;
        uint104 result = RandomUintX.nextUint104(seed);
        assertLe(result, type(uint104).max, "invalid uint104");
    }

    function test_NextUint112() public pure {
        uint256 seed = 161803;
        uint112 result = RandomUintX.nextUint112(seed);
        assertLe(result, type(uint112).max, "invalid uint112");
    }

    function test_NextUint120() public pure {
        uint256 seed = 141421;
        uint120 result = RandomUintX.nextUint120(seed);
        assertLe(result, type(uint120).max, "invalid uint120");
    }

    function test_NextUint128() public pure {
        uint256 seed = 173205;
        uint128 result = RandomUintX.nextUint128(seed);
        assertLe(result, type(uint128).max, "invalid uint128");
    }

    function test_NextUint136() public pure {
        uint256 seed = 223606;
        uint136 result = RandomUintX.nextUint136(seed);
        assertLe(result, type(uint136).max, "invalid uint136");
    }

    function test_NextUint144() public pure {
        uint256 seed = 244949;
        uint144 result = RandomUintX.nextUint144(seed);
        assertLe(result, type(uint144).max, "invalid uint144");
    }

    function test_NextUint152() public pure {
        uint256 seed = 316227;
        uint152 result = RandomUintX.nextUint152(seed);
        assertLe(result, type(uint152).max, "invalid uint152");
    }

    function test_NextUint160() public pure {
        uint256 seed = 123321;
        uint160 result = RandomUintX.nextUint160(seed);
        assertLe(result, type(uint160).max, "invalid uint160");
    }

    function test_NextUint168() public pure {
        uint256 seed = 987789;
        uint168 result = RandomUintX.nextUint168(seed);
        assertLe(result, type(uint168).max, "invalid uint168");
    }

    function test_NextUint176() public pure {
        uint256 seed = 666768;
        uint176 result = RandomUintX.nextUint176(seed);
        assertLt(result, type(uint176).max, "invalid uint176");
    }

    function test_NextUint184() public pure {
        uint256 seed = 697071;
        uint184 result = RandomUintX.nextUint184(seed);
        assertLt(result, type(uint184).max, "invalid uint184");
    }

    function test_NextUint192() public pure {
        uint256 seed = 727374;
        uint192 result = RandomUintX.nextUint192(seed);
        assertLt(result, type(uint192).max, "invalid uint192");
    }

    function test_NextUint200() public pure {
        uint256 seed = 757677;
        uint200 result = RandomUintX.nextUint200(seed);
        assertLt(result, type(uint200).max, "invalid uint200");
    }

    function test_NextUint208() public pure {
        uint256 seed = 787980;
        uint208 result = RandomUintX.nextUint208(seed);
        assertLt(result, type(uint208).max, "invalid uint208");
    }

    function test_NextUint216() public pure {
        uint256 seed = 818283;
        uint216 result = RandomUintX.nextUint216(seed);
        assertLt(result, type(uint216).max, "invalid uint216");
    }

    function test_NextUint224() public pure {
        uint256 seed = 848586;
        uint224 result = RandomUintX.nextUint224(seed);
        assertLt(result, type(uint224).max, "invalid uint224");
    }

    function test_NextUint232() public pure {
        uint256 seed = 878889;
        uint232 result = RandomUintX.nextUint232(seed);
        assertLt(result, type(uint232).max, "invalid uint232");
    }

    function test_NextUint240() public pure {
        uint256 seed = 909192;
        uint240 result = RandomUintX.nextUint240(seed);
        assertLt(result, type(uint240).max, "invalid uint240");
    }

    function test_NextUint248() public pure {
        uint256 seed = 939495;
        uint248 result = RandomUintX.nextUint248(seed);
        assertLt(result, type(uint248).max, "invalid uint248");
        console.log(result);
    }

    function test_NextUint256() public pure {
        uint256 seed = 969798;
        uint256 result = RandomUintX.nextUint256(seed);
        assertLt(result, type(uint256).max, "invalid uint256");
    }
}
