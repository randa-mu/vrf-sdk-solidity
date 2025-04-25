// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/// @title RandomUintXInRange
/// @notice Generates pseudo-random unsigned integers within a range from a uint256 seed
library RandomUintXInRange {
    function nextUint8InRange(uint256 seed, uint8 min, uint8 max) internal pure returns (uint8) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint8(seed % (max - min + 1));
    }

    function nextUint16InRange(uint256 seed, uint16 min, uint16 max) internal pure returns (uint16) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint16(seed % (max - min + 1));
    }

    function nextUint24InRange(uint256 seed, uint24 min, uint24 max) internal pure returns (uint24) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint24(seed % (max - min + 1));
    }

    function nextUint32InRange(uint256 seed, uint32 min, uint32 max) internal pure returns (uint32) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint32(seed % (max - min + 1));
    }

    function nextUint40InRange(uint256 seed, uint40 min, uint40 max) internal pure returns (uint40) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint40(seed % (max - min + 1));
    }

    function nextUint48InRange(uint256 seed, uint48 min, uint48 max) internal pure returns (uint48) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint48(seed % (max - min + 1));
    }

    function nextUint56InRange(uint256 seed, uint56 min, uint56 max) internal pure returns (uint56) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint56(seed % (max - min + 1));
    }

    function nextUint64InRange(uint256 seed, uint64 min, uint64 max) internal pure returns (uint64) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint64(seed % (max - min + 1));
    }

    function nextUint72InRange(uint256 seed, uint72 min, uint72 max) internal pure returns (uint72) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint72(seed % (max - min + 1));
    }

    function nextUint80InRange(uint256 seed, uint80 min, uint80 max) internal pure returns (uint80) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint80(seed % (max - min + 1));
    }

    function nextUint88InRange(uint256 seed, uint88 min, uint88 max) internal pure returns (uint88) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint88(seed % (max - min + 1));
    }

    function nextUint96InRange(uint256 seed, uint96 min, uint96 max) internal pure returns (uint96) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint96(seed % (max - min + 1));
    }

    function nextUint104InRange(uint256 seed, uint104 min, uint104 max) internal pure returns (uint104) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint104(seed % (max - min + 1));
    }

    function nextUint112InRange(uint256 seed, uint112 min, uint112 max) internal pure returns (uint112) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint112(seed % (max - min + 1));
    }

    function nextUint120InRange(uint256 seed, uint120 min, uint120 max) internal pure returns (uint120) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint120(seed % (max - min + 1));
    }

    function nextUint128InRange(uint256 seed, uint128 min, uint128 max) internal pure returns (uint128) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint128(seed % (max - min + 1));
    }

    function nextUint136InRange(uint256 seed, uint136 min, uint136 max) internal pure returns (uint136) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint136(seed % (max - min + 1));
    }

    function nextUint144InRange(uint256 seed, uint144 min, uint144 max) internal pure returns (uint144) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint144(seed % (max - min + 1));
    }

    function nextUint152InRange(uint256 seed, uint152 min, uint152 max) internal pure returns (uint152) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint152(seed % (max - min + 1));
    }

    function nextUint160InRange(uint256 seed, uint160 min, uint160 max) internal pure returns (uint160) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint160(seed % (max - min + 1));
    }

    function nextUint168InRange(uint256 seed, uint168 min, uint168 max) internal pure returns (uint168) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint168(seed % (max - min + 1));
    }

    function nextUint176InRange(uint256 seed, uint176 min, uint176 max) internal pure returns (uint176) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint176(seed % (max - min + 1));
    }

    function nextUint184InRange(uint256 seed, uint184 min, uint184 max) internal pure returns (uint184) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint184(seed % (max - min + 1));
    }

    function nextUint192InRange(uint256 seed, uint192 min, uint192 max) internal pure returns (uint192) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint192(seed % (max - min + 1));
    }

    function nextUint200InRange(uint256 seed, uint200 min, uint200 max) internal pure returns (uint200) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint200(seed % (max - min + 1));
    }

    function nextUint208InRange(uint256 seed, uint208 min, uint208 max) internal pure returns (uint208) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint208(seed % (max - min + 1));
    }

    function nextUint216InRange(uint256 seed, uint216 min, uint216 max) internal pure returns (uint216) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint216(seed % (max - min + 1));
    }

    function nextUint224InRange(uint256 seed, uint224 min, uint224 max) internal pure returns (uint224) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint224(seed % (max - min + 1));
    }

    function nextUint232InRange(uint256 seed, uint232 min, uint232 max) internal pure returns (uint232) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint232(seed % (max - min + 1));
    }

    function nextUint240InRange(uint256 seed, uint240 min, uint240 max) internal pure returns (uint240) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint240(seed % (max - min + 1));
    }

    function nextUint248InRange(uint256 seed, uint248 min, uint248 max) internal pure returns (uint248) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + uint248(seed % (max - min + 1));
    }

    function nextUint256InRange(uint256 seed, uint256 min, uint256 max) internal pure returns (uint256) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        return min + (seed % (max - min + 1));
    }
}
