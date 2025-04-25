// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

/// @title RandomIntXInRange
/// @notice Generates pseudo-random signed integers within a range from a uint256 seed
library RandomIntXInRange {

    function nextInt8InRange(uint256 seed, int8 min, int8 max) internal pure returns (int8) {
        require(min <= max, "Invalid range");
        if (min == max) return min;

        uint8 range = 0;
        if (uint8(min) == 0) {
            range = uint8(max) - uint8(min) + 1;
        } else {
            range = uint8(min) - uint8(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range);

        int256 temp = int256(scaledValue) + min;
        return int8(temp);
    }

    function nextInt16InRange(uint256 seed, int16 min, int16 max) internal pure returns (int16) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint16 range = 0;
        if (uint16(min) == 0) {
            range = uint16(max) - uint16(min) + 1;
        } else {
            range = uint16(min) - uint16(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int16(temp);
    }

    function nextInt24InRange(uint256 seed, int24 min, int24 max) internal pure returns (int24) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint24 range = 0;
        if (uint24(min) == 0) {
            range = uint24(max) - uint24(min) + 1;
        } else {
            range = uint24(min) - uint24(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int24(temp);
    }

    function nextInt32InRange(uint256 seed, int32 min, int32 max) internal pure returns (int32) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint32 range = 0;
        if (uint32(min) == 0) {
            range = uint32(max) - uint32(min) + 1;
        } else {
            range = uint32(min) - uint32(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int32(temp);
    }

    function nextInt40InRange(uint256 seed, int40 min, int40 max) internal pure returns (int40) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint40 range = 0;
        if (uint40(min) == 0) {
            range = uint40(max) - uint40(min) + 1;
        } else {
            range = uint40(min) - uint40(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int40(temp);
    }

    function nextInt48InRange(uint256 seed, int48 min, int48 max) internal pure returns (int48) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint48 range = 0;
        if (uint48(min) == 0) {
            range = uint48(max) - uint48(min) + 1;
        } else {
            range = uint48(min) - uint48(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int48(temp);
    }

    function nextInt56InRange(uint256 seed, int56 min, int56 max) internal pure returns (int56) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint56 range = 0;
        if (uint56(min) == 0) {
            range = uint56(max) - uint56(min) + 1;
        } else {
            range = uint56(min) - uint56(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int56(temp);
    }

    function nextInt64InRange(uint256 seed, int64 min, int64 max) internal pure returns (int64) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint64 range = 0;
        if (uint64(min) == 0) {
            range = uint64(max) - uint64(min) + 1;
        } else {
            range = uint64(min) - uint64(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int64(temp);
    }

    function nextInt72InRange(uint256 seed, int72 min, int72 max) internal pure returns (int72) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint72 range = 0;
        if (uint72(min) == 0) {
            range = uint72(max) - uint72(min) + 1;
        } else {
            range = uint72(min) - uint72(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int72(temp);
    }

    function nextInt80InRange(uint256 seed, int80 min, int80 max) internal pure returns (int80) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint80 range = 0;
        if (uint80(min) == 0) {
            range = uint80(max) - uint80(min) + 1;
        } else {
            range = uint80(min) - uint80(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int80(temp);
    }

    function nextInt88InRange(uint256 seed, int88 min, int88 max) internal pure returns (int88) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint88 range = 0;
        if (uint88(min) == 0) {
            range = uint88(max) - uint88(min) + 1;
        } else {
            range = uint88(min) - uint88(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int88(temp);
    }

    function nextInt96InRange(uint256 seed, int96 min, int96 max) internal pure returns (int96) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint96 range = 0;
        if (uint96(min) == 0) {
            range = uint96(max) - uint96(min) + 1;
        } else {
            range = uint96(min) - uint96(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int96(temp);
    }

    function nextInt104InRange(uint256 seed, int104 min, int104 max) internal pure returns (int104) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint104 range = 0;
        if (uint104(min) == 0) {
            range = uint104(max) - uint104(min) + 1;
        } else {
            range = uint104(min) - uint104(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int104(temp);
    }

    function nextInt112InRange(uint256 seed, int112 min, int112 max) internal pure returns (int112) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint112 range = 0;
        if (uint112(min) == 0) {
            range = uint112(max) - uint112(min) + 1;
        } else {
            range = uint112(min) - uint112(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int112(temp);
    }

    function nextInt120InRange(uint256 seed, int120 min, int120 max) internal pure returns (int120) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint120 range = 0;
        if (uint120(min) == 0) {
            range = uint120(max) - uint120(min) + 1;
        } else {
            range = uint120(min) - uint120(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int120(temp);
    }

    function nextInt128InRange(uint256 seed, int128 min, int128 max) internal pure returns (int128) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint128 range = 0;
        if (uint128(min) == 0) {
            range = uint128(max) - uint128(min) + 1;
        } else {
            range = uint128(min) - uint128(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int128(temp);
    }

    function nextInt136InRange(uint256 seed, int136 min, int136 max) internal pure returns (int136) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint136 range = 0;
        if (uint136(min) == 0) {
            range = uint136(max) - uint136(min) + 1;
        } else {
            range = uint136(min) - uint136(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int136(temp);
    }

    function nextInt144InRange(uint256 seed, int144 min, int144 max) internal pure returns (int144) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint144 range = 0;
        if (uint144(min) == 0) {
            range = uint144(max) - uint144(min) + 1;
        } else {
            range = uint144(min) - uint144(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int144(temp);
    }

    function nextInt152InRange(uint256 seed, int152 min, int152 max) internal pure returns (int152) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint152 range = 0;
        if (uint152(min) == 0) {
            range = uint152(max) - uint152(min) + 1;
        } else {
            range = uint152(min) - uint152(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int152(temp);
    }

    function nextInt160InRange(uint256 seed, int160 min, int160 max) internal pure returns (int160) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint160 range = 0;
        if (uint160(min) == 0) {
            range = uint160(max) - uint160(min) + 1;
        } else {
            range = uint160(min) - uint160(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int160(temp);
    }

    function nextInt168InRange(uint256 seed, int168 min, int168 max) internal pure returns (int168) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint168 range = 0;
        if (uint168(min) == 0) {
            range = uint168(max) - uint168(min) + 1;
        } else {
            range = uint168(min) - uint168(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int168(temp);
    }

    function nextInt176InRange(uint256 seed, int176 min, int176 max) internal pure returns (int176) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint176 range = 0;
        if (uint176(min) == 0) {
            range = uint176(max) - uint176(min) + 1;
        } else {
            range = uint176(min) - uint176(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int176(temp);
    }

    function nextInt184InRange(uint256 seed, int184 min, int184 max) internal pure returns (int184) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint184 range = 0;
        if (uint184(min) == 0) {
            range = uint184(max) - uint184(min) + 1;
        } else {
            range = uint184(min) - uint184(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int184(temp);
    }

    function nextInt192InRange(uint256 seed, int192 min, int192 max) internal pure returns (int192) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint192 range = 0;
        if (uint192(min) == 0) {
            range = uint192(max) - uint192(min) + 1;
        } else {
            range = uint192(min) - uint192(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int192(temp);
    }

    function nextInt200InRange(uint256 seed, int200 min, int200 max) internal pure returns (int200) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint200 range = 0;
        if (uint200(min) == 0) {
            range = uint200(max) - uint200(min) + 1;
        } else {
            range = uint200(min) - uint200(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int200(temp);
    }

    function nextInt208InRange(uint256 seed, int208 min, int208 max) internal pure returns (int208) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint208 range = 0;
        if (uint208(min) == 0) {
            range = uint208(max) - uint208(min) + 1;
        } else {
            range = uint208(min) - uint208(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int208(temp);
    }

    function nextInt216InRange(uint256 seed, int216 min, int216 max) internal pure returns (int216) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint216 range = 0;
        if (uint216(min) == 0) {
            range = uint216(max) - uint216(min) + 1;
        } else {
            range = uint216(min) - uint216(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int216(temp);
    }

    function nextInt224InRange(uint256 seed, int224 min, int224 max) internal pure returns (int224) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint224 range = 0;
        if (uint224(min) == 0) {
            range = uint224(max) - uint224(min) + 1;
        } else {
            range = uint224(min) - uint224(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int224(temp);
    }

    function nextInt232InRange(uint256 seed, int232 min, int232 max) internal pure returns (int232) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint232 range = 0;
        if (uint232(min) == 0) {
            range = uint232(max) - uint232(min) + 1;
        } else {
            range = uint232(min) - uint232(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int232(temp);
    }

    function nextInt240InRange(uint256 seed, int240 min, int240 max) internal pure returns (int240) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint240 range = 0;
        if (uint240(min) == 0) {
            range = uint240(max) - uint240(min) + 1;
        } else {
            range = uint240(min) - uint240(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int240(temp);
    }

    function nextInt248InRange(uint256 seed, int248 min, int248 max) internal pure returns (int248) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        
        uint248 range = 0;
        if (uint248(min) == 0) {
            range = uint248(max) - uint248(min) + 1;
        } else {
            range = uint248(min) - uint248(max) + 1;
        }

        // Calculate the scaled value within the range
        uint256 scaledValue = uint256(seed % range );

        int256 temp = int256(scaledValue) + min;
        return int248(temp);
    }

    function nextInt256InRange(uint256 seed, int256 min, int256 max) internal pure returns (int256) {
        require(min <= max, "Invalid range");
        if (min == max) return min;
        int256 range = max - min + 1;
        // Ensure correct casting to int256
        return min + int256(seed % uint256(range));  
    }
}
