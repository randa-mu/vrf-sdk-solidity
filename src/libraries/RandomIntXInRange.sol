// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/// @title RandomIntXInRange
/// @notice Generates pseudo-random signed integers within a range from a uint256 seed
library RandomIntXInRange {
    function _nextIntInRange(uint256 seed, int256 min, int256 max) internal pure returns (int256) {
        require(min <= max, "Invalid range");
        if (min == max) return min;

        uint256 range = uint256(int256(max - min)) + 1;
        uint256 scaledValue = seed % range;
        return int256(scaledValue) + min;
    }

    function nextInt8InRange(uint256 seed, int8 min, int8 max) internal pure returns (int8) {
        return int8(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt16InRange(uint256 seed, int16 min, int16 max) internal pure returns (int16) {
        return int16(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt24InRange(uint256 seed, int24 min, int24 max) internal pure returns (int24) {
        return int24(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt32InRange(uint256 seed, int32 min, int32 max) internal pure returns (int32) {
        return int32(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt40InRange(uint256 seed, int40 min, int40 max) internal pure returns (int40) {
        return int40(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt48InRange(uint256 seed, int48 min, int48 max) internal pure returns (int48) {
        return int48(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt56InRange(uint256 seed, int56 min, int56 max) internal pure returns (int56) {
        return int56(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt64InRange(uint256 seed, int64 min, int64 max) internal pure returns (int64) {
        return int64(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt72InRange(uint256 seed, int72 min, int72 max) internal pure returns (int72) {
        return int72(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt80InRange(uint256 seed, int80 min, int80 max) internal pure returns (int80) {
        return int80(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt88InRange(uint256 seed, int88 min, int88 max) internal pure returns (int88) {
        return int88(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt96InRange(uint256 seed, int96 min, int96 max) internal pure returns (int96) {
        return int96(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt104InRange(uint256 seed, int104 min, int104 max) internal pure returns (int104) {
        return int104(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt112InRange(uint256 seed, int112 min, int112 max) internal pure returns (int112) {
        return int112(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt120InRange(uint256 seed, int120 min, int120 max) internal pure returns (int120) {
        return int120(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt128InRange(uint256 seed, int128 min, int128 max) internal pure returns (int128) {
        return int128(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt136InRange(uint256 seed, int136 min, int136 max) internal pure returns (int136) {
        return int136(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt144InRange(uint256 seed, int144 min, int144 max) internal pure returns (int144) {
        return int144(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt152InRange(uint256 seed, int152 min, int152 max) internal pure returns (int152) {
        return int152(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt160InRange(uint256 seed, int160 min, int160 max) internal pure returns (int160) {
        return int160(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt168InRange(uint256 seed, int168 min, int168 max) internal pure returns (int168) {
        return int168(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt176InRange(uint256 seed, int176 min, int176 max) internal pure returns (int176) {
        return int176(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt184InRange(uint256 seed, int184 min, int184 max) internal pure returns (int184) {
        return int184(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt192InRange(uint256 seed, int192 min, int192 max) internal pure returns (int192) {
        return int192(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt200InRange(uint256 seed, int200 min, int200 max) internal pure returns (int200) {
        return int200(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt208InRange(uint256 seed, int208 min, int208 max) internal pure returns (int208) {
        return int208(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt216InRange(uint256 seed, int216 min, int216 max) internal pure returns (int216) {
        return int216(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt224InRange(uint256 seed, int224 min, int224 max) internal pure returns (int224) {
        return int224(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt232InRange(uint256 seed, int232 min, int232 max) internal pure returns (int232) {
        return int232(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt240InRange(uint256 seed, int240 min, int240 max) internal pure returns (int240) {
        return int240(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt248InRange(uint256 seed, int248 min, int248 max) internal pure returns (int248) {
        return int248(_nextIntInRange(seed, int256(min), int256(max)));
    }

    function nextInt256InRange(uint256 seed, int256 min, int256 max) internal pure returns (int256) {
        return _nextIntInRange(seed, int256(min), int256(max));
    }
}
