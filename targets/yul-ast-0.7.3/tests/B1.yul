/*******************************************************
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *******************************************************/


object "B1_61" {
    code {
        mstore(64, memoryguard(128))
        if callvalue() { revert(0, 0) }

        constructor_B1_61()

        codecopy(0, dataoffset("B1_61_deployed"), datasize("B1_61_deployed"))

        return(0, datasize("B1_61_deployed"))

        function constructor_B1_61() {

        }

    }
    object "B1_61_deployed" {
        code {
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x04bc52f8
                {
                    // foo(uint256,uint256)
                    if callvalue() { revert(0, 0) }
                    let param_0, param_1 :=  abi_decode_tuple_t_uint256t_uint256(4, calldatasize())
                    fun_foo_31(param_0, param_1)
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x14fc78fc
                {
                    // observe()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0, ret_1 :=  fun_observe_60()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(memPos , ret_0, ret_1)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xfebb0f7e
                {
                    // bar()
                    if callvalue() { revert(0, 0) }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_bar_42()
                    let memPos := allocateMemory(0)
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                default {}
            }
            if iszero(calldatasize()) {  }
            revert(0, 0)

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert(0, 0) }

            }

            function abi_decode_tuple_t_uint256t_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert(0, 0) }

                {
                    let offset := 0
                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {
                    let offset := 32
                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

            }

            function allocateMemory(size) -> memPtr {
                memPtr := mload(64)
                let newFreePtr := add(memPtr, size)
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error() }
                mstore(64, newFreePtr)
            }

            function allocate_memory_struct_t_struct$_S_$6_storage_ptr() -> memPtr {
                memPtr := allocateMemory(64)
            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(value)
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function fun_bar_42() -> vloc__34 {
                let zero_value_for_type_t_uint256_18 := zero_value_for_split_t_uint256()
                vloc__34 := zero_value_for_type_t_uint256_18

                let _19 := 0x00
                let expr_36 := _19
                let expr_37 := 0x01
                let _20 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_S_$6_storage_$_of_t_rational_1_by_1(expr_36,expr_37)
                let _21_slot := _20
                let expr_38_slot := _21_slot
                let _22 := add(expr_38_slot, 1)
                let _23 := read_from_storage_offset_0_t_uint256(_22)
                let expr_39 := _23
                vloc__34 := expr_39
                leave

            }

            function fun_foo_31(vloc_x_12, vloc_y_14) {

                let _13 := vloc_x_12
                let expr_20 := _13
                let _14 := vloc_y_14
                let expr_21 := _14
                let expr_22_mpos := allocate_memory_struct_t_struct$_S_$6_storage_ptr()
                write_to_memory_t_uint256(add(expr_22_mpos, 0), expr_20)
                write_to_memory_t_uint256(add(expr_22_mpos, 32), expr_21)
                let vloc_s_18_mpos := expr_22_mpos
                let _15_mpos := vloc_s_18_mpos
                let expr_27_mpos := _15_mpos
                let _16 := 0x00
                let expr_24 := _16
                let expr_25 := 0x01
                let _17 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_S_$6_storage_$_of_t_rational_1_by_1(expr_24,expr_25)
                update_storage_value_offset_0t_struct$_S_$6_memory_ptr_to_t_struct$_S_$6_storage(_17, expr_27_mpos)

            }

            function fun_observe_60() -> vloc__45, vloc__47 {
                let zero_value_for_type_t_uint256_1 := zero_value_for_split_t_uint256()
                vloc__45 := zero_value_for_type_t_uint256_1
                let zero_value_for_type_t_uint256_2 := zero_value_for_split_t_uint256()
                vloc__47 := zero_value_for_type_t_uint256_2

                let _3 := 0x00
                let expr_49 := _3
                let expr_50 := 0x01
                let _4 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_S_$6_storage_$_of_t_rational_1_by_1(expr_49,expr_50)
                let _5_slot := _4
                let expr_51_slot := _5_slot
                let _6 := add(expr_51_slot, 0)
                let _7 := read_from_storage_offset_0_t_uint256(_6)
                let expr_52 := _7
                let expr_57_component_1 := expr_52
                let _8 := 0x00
                let expr_53 := _8
                let expr_54 := 0x01
                let _9 := mapping_index_access_t_mapping$_t_uint256_$_t_struct$_S_$6_storage_$_of_t_rational_1_by_1(expr_53,expr_54)
                let _10_slot := _9
                let expr_55_slot := _10_slot
                let _11 := add(expr_55_slot, 1)
                let _12 := read_from_storage_offset_0_t_uint256(_11)
                let expr_56 := _12
                let expr_57_component_2 := expr_56
                vloc__45 := expr_57_component_1
                vloc__47 := expr_57_component_2
                leave

            }

            function mapping_index_access_t_mapping$_t_uint256_$_t_struct$_S_$6_storage_$_of_t_rational_1_by_1(slot , key) -> dataSlot {
                mstore(0, convert_t_rational_1_by_1_to_t_uint256(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function panic_error() {
                invalid()
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function read_from_memoryt_uint256(ptr) -> value {

                value := cleanup_t_uint256(mload(ptr))

            }

            function read_from_storage_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))
            }

            function shift_left_dynamic(bits, value) -> newValue {
                newValue :=

                shl(bits, value)

            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function update_byte_slice_dynamic32(value, shiftBytes, toInsert) -> result {
                let shiftBits := mul(shiftBytes, 8)
                let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                toInsert := shift_left_dynamic(shiftBits, toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_0t_struct$_S_$6_memory_ptr_to_t_struct$_S_$6_storage(slot, value) {

                {

                    let memberValue_0 := read_from_memoryt_uint256(add(value, 0))
                    update_storage_value_t_uint256_to_t_uint256(add(slot, 0), 0, memberValue_0)

                }

                {

                    let memberValue_0 := read_from_memoryt_uint256(add(value, 32))
                    update_storage_value_t_uint256_to_t_uint256(add(slot, 1), 0, memberValue_0)

                }

            }

            function update_storage_value_t_uint256_to_t_uint256(slot, offset, value) {
                sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(value)))
            }

            function validator_assert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { panic_error() }
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function write_to_memory_t_uint256(memPtr, value) {
                mstore(memPtr, cleanup_t_uint256(value))
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

        }

    }

}

