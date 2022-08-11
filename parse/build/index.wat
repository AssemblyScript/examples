(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (import "env" "memory" (memory $0 0))
 (import "options" "onSection" (func $assembly/options/onSection (param i32 i32 i32 i32 i32) (result i32)))
 (import "options" "onType" (func $assembly/options/onType (param i32 i32)))
 (import "options" "onTypeParam" (func $assembly/options/onTypeParam (param i32 i32 i32)))
 (import "options" "onTypeReturn" (func $assembly/options/onTypeReturn (param i32 i32 i32)))
 (import "options" "onImport" (func $assembly/options/onImport (param i32 i32 i32 i32 i32 i32)))
 (import "options" "onFunctionImport" (func $assembly/options/onFunctionImport (param i32 i32)))
 (import "options" "onTableImport" (func $assembly/options/onTableImport (param i32 i32 i32 i32 i32)))
 (import "options" "onMemoryImport" (func $assembly/options/onMemoryImport (param i32 i32 i32 i32)))
 (import "options" "onGlobalImport" (func $assembly/options/onGlobalImport (param i32 i32 i32)))
 (import "options" "onFunction" (func $assembly/options/onFunction (param i32 i32)))
 (import "options" "onTable" (func $assembly/options/onTable (param i32 i32 i32 i32 i32)))
 (import "options" "onMemory" (func $assembly/options/onMemory (param i32 i32 i32 i32)))
 (import "options" "onGlobal" (func $assembly/options/onGlobal (param i32 i32 i32)))
 (import "options" "onExport" (func $assembly/options/onExport (param i32 i32 i32 i32 i32)))
 (import "options" "onStart" (func $assembly/options/onStart (param i32)))
 (import "options" "onModuleName" (func $assembly/options/onModuleName (param i32 i32)))
 (import "options" "onFunctionName" (func $assembly/options/onFunctionName (param i32 i32 i32)))
 (import "options" "onLocalName" (func $assembly/options/onLocalName (param i32 i32 i32 i32)))
 (import "options" "onSourceMappingURL" (func $assembly/options/onSourceMappingURL (param i32 i32)))
 (global $assembly/index/off (mut i32) (i32.const 0))
 (export "parse" (func $assembly/index/parse))
 (export "memory" (memory $0))
 (func $assembly/index/parse (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
  (local $16 i32)
  (local $17 i64)
  (local $18 i64)
  (local $19 i32)
  local.get $0
  global.set $assembly/index/off
  global.get $assembly/index/off
  local.tee $0
  i32.load
  local.get $0
  i32.const 4
  i32.add
  global.set $assembly/index/off
  i32.const 1836278016
  i32.ne
  if
   unreachable
  end
  global.get $assembly/index/off
  local.tee $0
  i32.load
  local.get $0
  i32.const 4
  i32.add
  global.set $assembly/index/off
  i32.const 1
  i32.ne
  if
   unreachable
  end
  loop $while-continue|0
   global.get $assembly/index/off
   local.get $1
   i32.lt_u
   if
    i32.const 0
    local.set $2
    i32.const 0
    local.set $4
    global.get $assembly/index/off
    local.set $0
    loop $do-loop|0
     local.get $0
     local.tee $3
     i32.const 1
     i32.add
     local.set $0
     local.get $2
     local.get $3
     i32.load8_u
     local.tee $3
     i32.const 127
     i32.and
     local.get $4
     i32.shl
     i32.or
     local.set $2
     local.get $3
     i32.const 128
     i32.and
     if
      local.get $4
      i32.const 7
      i32.add
      local.set $4
      br $do-loop|0
     end
    end
    local.get $0
    global.set $assembly/index/off
    local.get $2
    local.set $10
    i32.const 0
    local.set $4
    i32.const 0
    local.set $3
    global.get $assembly/index/off
    local.set $0
    loop $do-loop|03
     local.get $0
     local.tee $2
     i32.const 1
     i32.add
     local.set $0
     local.get $4
     local.get $2
     i32.load8_u
     local.tee $2
     i32.const 127
     i32.and
     local.get $3
     i32.shl
     i32.or
     local.set $4
     local.get $2
     i32.const 128
     i32.and
     if
      local.get $3
      i32.const 7
      i32.add
      local.set $3
      br $do-loop|03
     end
    end
    local.get $0
    global.set $assembly/index/off
    i32.const 0
    local.set $0
    i32.const 0
    local.set $2
    local.get $10
    if
     local.get $10
     i32.const 11
     i32.gt_u
     if
      unreachable
     end
    else
     i32.const 0
     local.set $9
     i32.const 0
     local.set $13
     global.get $assembly/index/off
     local.tee $3
     local.set $0
     loop $do-loop|06
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $9
      local.get $2
      i32.load8_u
      local.tee $2
      i32.const 127
      i32.and
      local.get $13
      i32.shl
      i32.or
      local.set $9
      local.get $2
      i32.const 128
      i32.and
      if
       local.get $13
       i32.const 7
       i32.add
       local.set $13
       br $do-loop|06
      end
     end
     local.get $0
     global.set $assembly/index/off
     global.get $assembly/index/off
     local.tee $0
     local.get $9
     local.tee $2
     i32.add
     global.set $assembly/index/off
     local.get $4
     global.get $assembly/index/off
     local.get $3
     i32.sub
     i32.sub
     local.set $4
    end
    local.get $10
    global.get $assembly/index/off
    local.tee $11
    local.get $4
    local.get $0
    local.get $2
    call $assembly/options/onSection
    if
     block $break|1
      block $case12|1
       block $case9|1
        block $case8|1
         block $case7|1
          block $case6|1
           block $case5|1
            block $case4|1
             block $case3|1
              block $case2|1
               block $case1|1
                block $case0|1
                 local.get $10
                 br_table $case8|1 $case0|1 $case1|1 $case2|1 $case3|1 $case4|1 $case5|1 $case6|1 $case7|1 $case9|1 $case9|1 $case9|1 $case12|1
                end
                i32.const 0
                local.set $2
                i32.const 0
                local.set $4
                global.get $assembly/index/off
                local.set $0
                loop $do-loop|09
                 local.get $0
                 local.tee $3
                 i32.const 1
                 i32.add
                 local.set $0
                 local.get $2
                 local.get $3
                 i32.load8_u
                 local.tee $3
                 i32.const 127
                 i32.and
                 local.get $4
                 i32.shl
                 i32.or
                 local.set $2
                 local.get $3
                 i32.const 128
                 i32.and
                 if
                  local.get $4
                  i32.const 7
                  i32.add
                  local.set $4
                  br $do-loop|09
                 end
                end
                local.get $0
                global.set $assembly/index/off
                local.get $2
                local.set $10
                i32.const 0
                local.set $14
                loop $for-loop|2
                 local.get $10
                 local.get $14
                 i32.gt_u
                 if
                  i32.const 0
                  local.set $3
                  i32.const 0
                  local.set $4
                  global.get $assembly/index/off
                  local.set $0
                  loop $do-loop|011
                   local.get $0
                   local.tee $2
                   i32.const 1
                   i32.add
                   local.set $0
                   local.get $3
                   local.get $2
                   i32.load8_u
                   local.tee $2
                   i32.const 127
                   i32.and
                   local.get $4
                   i32.shl
                   i32.or
                   local.set $3
                   local.get $4
                   i32.const 7
                   i32.add
                   local.set $4
                   local.get $2
                   i32.const 128
                   i32.and
                   br_if $do-loop|011
                  end
                  local.get $0
                  global.set $assembly/index/off
                  local.get $14
                  local.get $3
                  i32.const -1
                  local.get $4
                  i32.shl
                  i32.or
                  local.get $3
                  local.get $2
                  i32.const 64
                  i32.and
                  i32.const 0
                  i32.ne
                  local.get $4
                  i32.const 7
                  i32.lt_u
                  i32.and
                  select
                  i32.const 127
                  i32.and
                  call $assembly/options/onType
                  i32.const 0
                  local.set $4
                  i32.const 0
                  local.set $3
                  global.get $assembly/index/off
                  local.set $0
                  loop $do-loop|014
                   local.get $0
                   local.tee $2
                   i32.const 1
                   i32.add
                   local.set $0
                   local.get $4
                   local.get $2
                   i32.load8_u
                   local.tee $2
                   i32.const 127
                   i32.and
                   local.get $3
                   i32.shl
                   i32.or
                   local.set $4
                   local.get $2
                   i32.const 128
                   i32.and
                   if
                    local.get $3
                    i32.const 7
                    i32.add
                    local.set $3
                    br $do-loop|014
                   end
                  end
                  local.get $0
                  global.set $assembly/index/off
                  i32.const 0
                  local.set $3
                  loop $for-loop|3
                   local.get $3
                   local.get $4
                   i32.lt_u
                   if
                    i32.const 0
                    local.set $13
                    i32.const 0
                    local.set $9
                    global.get $assembly/index/off
                    local.set $0
                    loop $do-loop|017
                     local.get $0
                     local.tee $2
                     i32.const 1
                     i32.add
                     local.set $0
                     local.get $13
                     local.get $2
                     i32.load8_u
                     local.tee $2
                     i32.const 127
                     i32.and
                     local.get $9
                     i32.shl
                     i32.or
                     local.set $13
                     local.get $9
                     i32.const 7
                     i32.add
                     local.set $9
                     local.get $2
                     i32.const 128
                     i32.and
                     br_if $do-loop|017
                    end
                    local.get $0
                    global.set $assembly/index/off
                    local.get $14
                    local.get $3
                    local.get $13
                    i32.const -1
                    local.get $9
                    i32.shl
                    i32.or
                    local.get $13
                    local.get $2
                    i32.const 64
                    i32.and
                    i32.const 0
                    i32.ne
                    local.get $9
                    i32.const 7
                    i32.lt_u
                    i32.and
                    select
                    i32.const 127
                    i32.and
                    call $assembly/options/onTypeParam
                    local.get $3
                    i32.const 1
                    i32.add
                    local.set $3
                    br $for-loop|3
                   end
                  end
                  i32.const 0
                  local.set $4
                  i32.const 0
                  local.set $3
                  global.get $assembly/index/off
                  local.set $0
                  loop $do-loop|020
                   local.get $0
                   local.tee $2
                   i32.const 1
                   i32.add
                   local.set $0
                   local.get $4
                   local.get $2
                   i32.load8_u
                   local.tee $2
                   i32.const 127
                   i32.and
                   local.get $3
                   i32.shl
                   i32.or
                   local.set $4
                   local.get $2
                   i32.const 128
                   i32.and
                   if
                    local.get $3
                    i32.const 7
                    i32.add
                    local.set $3
                    br $do-loop|020
                   end
                  end
                  local.get $0
                  global.set $assembly/index/off
                  i32.const 0
                  local.set $2
                  loop $for-loop|4
                   local.get $2
                   local.get $4
                   i32.lt_u
                   if
                    i32.const 0
                    local.set $13
                    i32.const 0
                    local.set $9
                    global.get $assembly/index/off
                    local.set $0
                    loop $do-loop|023
                     local.get $0
                     local.tee $3
                     i32.const 1
                     i32.add
                     local.set $0
                     local.get $13
                     local.get $3
                     i32.load8_u
                     local.tee $3
                     i32.const 127
                     i32.and
                     local.get $9
                     i32.shl
                     i32.or
                     local.set $13
                     local.get $9
                     i32.const 7
                     i32.add
                     local.set $9
                     local.get $3
                     i32.const 128
                     i32.and
                     br_if $do-loop|023
                    end
                    local.get $0
                    global.set $assembly/index/off
                    local.get $14
                    local.get $2
                    local.get $13
                    i32.const -1
                    local.get $9
                    i32.shl
                    i32.or
                    local.get $13
                    local.get $3
                    i32.const 64
                    i32.and
                    i32.const 0
                    i32.ne
                    local.get $9
                    i32.const 7
                    i32.lt_u
                    i32.and
                    select
                    i32.const 127
                    i32.and
                    call $assembly/options/onTypeReturn
                    local.get $2
                    i32.const 1
                    i32.add
                    local.set $2
                    br $for-loop|4
                   end
                  end
                  local.get $14
                  i32.const 1
                  i32.add
                  local.set $14
                  br $for-loop|2
                 end
                end
                br $break|1
               end
               i32.const 0
               local.set $2
               i32.const 0
               local.set $4
               global.get $assembly/index/off
               local.set $0
               loop $do-loop|026
                local.get $0
                local.tee $3
                i32.const 1
                i32.add
                local.set $0
                local.get $2
                local.get $3
                i32.load8_u
                local.tee $3
                i32.const 127
                i32.and
                local.get $4
                i32.shl
                i32.or
                local.set $2
                local.get $3
                i32.const 128
                i32.and
                if
                 local.get $4
                 i32.const 7
                 i32.add
                 local.set $4
                 br $do-loop|026
                end
               end
               local.get $0
               global.set $assembly/index/off
               local.get $2
               local.set $10
               i32.const 0
               local.set $14
               loop $for-loop|5
                local.get $10
                local.get $14
                i32.gt_u
                if
                 i32.const 0
                 local.set $4
                 i32.const 0
                 local.set $3
                 global.get $assembly/index/off
                 local.set $0
                 loop $do-loop|029
                  local.get $0
                  local.tee $2
                  i32.const 1
                  i32.add
                  local.set $0
                  local.get $4
                  local.get $2
                  i32.load8_u
                  local.tee $2
                  i32.const 127
                  i32.and
                  local.get $3
                  i32.shl
                  i32.or
                  local.set $4
                  local.get $2
                  i32.const 128
                  i32.and
                  if
                   local.get $3
                   i32.const 7
                   i32.add
                   local.set $3
                   br $do-loop|029
                  end
                 end
                 local.get $0
                 global.set $assembly/index/off
                 local.get $4
                 global.get $assembly/index/off
                 local.tee $3
                 i32.add
                 global.set $assembly/index/off
                 i32.const 0
                 local.set $9
                 i32.const 0
                 local.set $13
                 global.get $assembly/index/off
                 local.set $0
                 loop $do-loop|032
                  local.get $0
                  local.tee $2
                  i32.const 1
                  i32.add
                  local.set $0
                  local.get $9
                  local.get $2
                  i32.load8_u
                  local.tee $2
                  i32.const 127
                  i32.and
                  local.get $13
                  i32.shl
                  i32.or
                  local.set $9
                  local.get $2
                  i32.const 128
                  i32.and
                  if
                   local.get $13
                   i32.const 7
                   i32.add
                   local.set $13
                   br $do-loop|032
                  end
                 end
                 local.get $0
                 global.set $assembly/index/off
                 global.get $assembly/index/off
                 local.tee $0
                 local.get $9
                 i32.add
                 global.set $assembly/index/off
                 global.get $assembly/index/off
                 local.tee $2
                 i32.load8_u
                 local.set $11
                 local.get $2
                 i32.const 1
                 i32.add
                 global.set $assembly/index/off
                 local.get $14
                 local.get $11
                 local.get $3
                 local.get $4
                 local.get $0
                 local.get $9
                 call $assembly/options/onImport
                 block $break|6
                  block $case4|6
                   block $case3|6
                    block $case2|6
                     block $case1|6
                      block $case0|6
                       local.get $11
                       br_table $case0|6 $case1|6 $case2|6 $case3|6 $case4|6
                      end
                      local.get $6
                      local.tee $2
                      i32.const 1
                      i32.add
                      local.set $6
                      i32.const 0
                      local.set $4
                      i32.const 0
                      local.set $3
                      global.get $assembly/index/off
                      local.set $0
                      loop $do-loop|035
                       local.get $0
                       local.tee $9
                       i32.const 1
                       i32.add
                       local.set $0
                       local.get $4
                       local.get $9
                       i32.load8_u
                       local.tee $9
                       i32.const 127
                       i32.and
                       local.get $3
                       i32.shl
                       i32.or
                       local.set $4
                       local.get $9
                       i32.const 128
                       i32.and
                       if
                        local.get $3
                        i32.const 7
                        i32.add
                        local.set $3
                        br $do-loop|035
                       end
                      end
                      local.get $0
                      global.set $assembly/index/off
                      local.get $2
                      local.get $4
                      call $assembly/options/onFunctionImport
                      br $break|6
                     end
                     i32.const 0
                     local.set $3
                     i32.const 0
                     local.set $4
                     global.get $assembly/index/off
                     local.set $0
                     loop $do-loop|038
                      local.get $0
                      local.tee $2
                      i32.const 1
                      i32.add
                      local.set $0
                      local.get $3
                      local.get $2
                      i32.load8_u
                      local.tee $2
                      i32.const 127
                      i32.and
                      local.get $4
                      i32.shl
                      i32.or
                      local.set $3
                      local.get $4
                      i32.const 7
                      i32.add
                      local.set $4
                      local.get $2
                      i32.const 128
                      i32.and
                      br_if $do-loop|038
                     end
                     local.get $0
                     global.set $assembly/index/off
                     local.get $3
                     i32.const -1
                     local.get $4
                     i32.shl
                     i32.or
                     local.get $3
                     local.get $2
                     i32.const 64
                     i32.and
                     i32.const 0
                     i32.ne
                     local.get $4
                     i32.const 7
                     i32.lt_u
                     i32.and
                     select
                     i32.const 127
                     i32.and
                     local.set $13
                     i32.const 0
                     local.set $3
                     i32.const 0
                     local.set $9
                     global.get $assembly/index/off
                     local.set $0
                     loop $do-loop|041
                      local.get $0
                      local.tee $2
                      i32.const 1
                      i32.add
                      local.set $0
                      local.get $3
                      local.get $2
                      i32.load8_u
                      local.tee $2
                      i32.const 127
                      i32.and
                      local.get $9
                      i32.shl
                      i32.or
                      local.set $3
                      local.get $2
                      i32.const 128
                      i32.and
                      if
                       local.get $9
                       i32.const 7
                       i32.add
                       local.set $9
                       br $do-loop|041
                      end
                     end
                     local.get $0
                     global.set $assembly/index/off
                     local.get $3
                     local.set $0
                     local.get $7
                     local.tee $4
                     i32.const 1
                     i32.add
                     local.set $7
                     i32.const 0
                     local.set $3
                     i32.const 0
                     local.set $9
                     global.get $assembly/index/off
                     local.set $2
                     loop $do-loop|044
                      local.get $2
                      local.tee $11
                      i32.const 1
                      i32.add
                      local.set $2
                      local.get $3
                      local.get $11
                      i32.load8_u
                      local.tee $11
                      i32.const 127
                      i32.and
                      local.get $9
                      i32.shl
                      i32.or
                      local.set $3
                      local.get $11
                      i32.const 128
                      i32.and
                      if
                       local.get $9
                       i32.const 7
                       i32.add
                       local.set $9
                       br $do-loop|044
                      end
                     end
                     local.get $2
                     global.set $assembly/index/off
                     local.get $3
                     local.set $11
                     local.get $0
                     i32.const 1
                     i32.and
                     if
                      i32.const 0
                      local.set $3
                      i32.const 0
                      local.set $9
                      global.get $assembly/index/off
                      local.set $2
                      loop $do-loop|047
                       local.get $2
                       local.tee $12
                       i32.const 1
                       i32.add
                       local.set $2
                       local.get $3
                       local.get $12
                       i32.load8_u
                       local.tee $12
                       i32.const 127
                       i32.and
                       local.get $9
                       i32.shl
                       i32.or
                       local.set $3
                       local.get $12
                       i32.const 128
                       i32.and
                       if
                        local.get $9
                        i32.const 7
                        i32.add
                        local.set $9
                        br $do-loop|047
                       end
                      end
                      local.get $2
                      global.set $assembly/index/off
                     else
                      i32.const -1
                      local.set $3
                     end
                     local.get $4
                     local.get $13
                     local.get $11
                     local.get $3
                     local.get $0
                     call $assembly/options/onTableImport
                     br $break|6
                    end
                    i32.const 0
                    local.set $4
                    i32.const 0
                    local.set $3
                    global.get $assembly/index/off
                    local.set $0
                    loop $do-loop|050
                     local.get $0
                     local.tee $2
                     i32.const 1
                     i32.add
                     local.set $0
                     local.get $4
                     local.get $2
                     i32.load8_u
                     local.tee $2
                     i32.const 127
                     i32.and
                     local.get $3
                     i32.shl
                     i32.or
                     local.set $4
                     local.get $2
                     i32.const 128
                     i32.and
                     if
                      local.get $3
                      i32.const 7
                      i32.add
                      local.set $3
                      br $do-loop|050
                     end
                    end
                    local.get $0
                    global.set $assembly/index/off
                    local.get $4
                    local.set $2
                    local.get $8
                    local.tee $9
                    i32.const 1
                    i32.add
                    local.set $8
                    i32.const 0
                    local.set $4
                    i32.const 0
                    local.set $3
                    global.get $assembly/index/off
                    local.set $0
                    loop $do-loop|053
                     local.get $0
                     local.tee $11
                     i32.const 1
                     i32.add
                     local.set $0
                     local.get $4
                     local.get $11
                     i32.load8_u
                     local.tee $11
                     i32.const 127
                     i32.and
                     local.get $3
                     i32.shl
                     i32.or
                     local.set $4
                     local.get $11
                     i32.const 128
                     i32.and
                     if
                      local.get $3
                      i32.const 7
                      i32.add
                      local.set $3
                      br $do-loop|053
                     end
                    end
                    local.get $0
                    global.set $assembly/index/off
                    local.get $4
                    local.set $11
                    local.get $2
                    i32.const 1
                    i32.and
                    if
                     i32.const 0
                     local.set $4
                     i32.const 0
                     local.set $3
                     global.get $assembly/index/off
                     local.set $0
                     loop $do-loop|056
                      local.get $0
                      local.tee $12
                      i32.const 1
                      i32.add
                      local.set $0
                      local.get $4
                      local.get $12
                      i32.load8_u
                      local.tee $12
                      i32.const 127
                      i32.and
                      local.get $3
                      i32.shl
                      i32.or
                      local.set $4
                      local.get $12
                      i32.const 128
                      i32.and
                      if
                       local.get $3
                       i32.const 7
                       i32.add
                       local.set $3
                       br $do-loop|056
                      end
                     end
                     local.get $0
                     global.set $assembly/index/off
                    else
                     i32.const 65535
                     local.set $4
                    end
                    local.get $9
                    local.get $11
                    local.get $4
                    local.get $2
                    call $assembly/options/onMemoryImport
                    br $break|6
                   end
                   local.get $5
                   local.tee $2
                   i32.const 1
                   i32.add
                   local.set $5
                   i32.const 0
                   local.set $3
                   i32.const 0
                   local.set $4
                   global.get $assembly/index/off
                   local.set $0
                   loop $do-loop|059
                    local.get $0
                    local.tee $9
                    i32.const 1
                    i32.add
                    local.set $0
                    local.get $3
                    local.get $9
                    i32.load8_u
                    local.tee $9
                    i32.const 127
                    i32.and
                    local.get $4
                    i32.shl
                    i32.or
                    local.set $3
                    local.get $4
                    i32.const 7
                    i32.add
                    local.set $4
                    local.get $9
                    i32.const 128
                    i32.and
                    br_if $do-loop|059
                   end
                   local.get $0
                   global.set $assembly/index/off
                   local.get $3
                   i32.const -1
                   local.get $4
                   i32.shl
                   i32.or
                   local.get $3
                   local.get $9
                   i32.const 64
                   i32.and
                   i32.const 0
                   i32.ne
                   local.get $4
                   i32.const 7
                   i32.lt_u
                   i32.and
                   select
                   i32.const 127
                   i32.and
                   local.set $11
                   i32.const 0
                   local.set $4
                   i32.const 0
                   local.set $3
                   global.get $assembly/index/off
                   local.set $0
                   loop $do-loop|062
                    local.get $0
                    local.tee $9
                    i32.const 1
                    i32.add
                    local.set $0
                    local.get $4
                    local.get $9
                    i32.load8_u
                    local.tee $9
                    i32.const 127
                    i32.and
                    local.get $3
                    i32.shl
                    i32.or
                    local.set $4
                    local.get $9
                    i32.const 128
                    i32.and
                    if
                     local.get $3
                     i32.const 7
                     i32.add
                     local.set $3
                     br $do-loop|062
                    end
                   end
                   local.get $0
                   global.set $assembly/index/off
                   local.get $2
                   local.get $11
                   local.get $4
                   call $assembly/options/onGlobalImport
                   br $break|6
                  end
                  unreachable
                 end
                 local.get $14
                 i32.const 1
                 i32.add
                 local.set $14
                 br $for-loop|5
                end
               end
               br $break|1
              end
              i32.const 0
              local.set $2
              i32.const 0
              local.set $4
              global.get $assembly/index/off
              local.set $0
              loop $do-loop|065
               local.get $0
               local.tee $3
               i32.const 1
               i32.add
               local.set $0
               local.get $2
               local.get $3
               i32.load8_u
               local.tee $3
               i32.const 127
               i32.and
               local.get $4
               i32.shl
               i32.or
               local.set $2
               local.get $3
               i32.const 128
               i32.and
               if
                local.get $4
                i32.const 7
                i32.add
                local.set $4
                br $do-loop|065
               end
              end
              local.get $0
              global.set $assembly/index/off
              i32.const 0
              local.set $14
              loop $for-loop|7
               local.get $2
               local.get $14
               i32.gt_u
               if
                local.get $6
                local.tee $9
                i32.const 1
                i32.add
                local.set $6
                i32.const 0
                local.set $4
                i32.const 0
                local.set $3
                global.get $assembly/index/off
                local.set $0
                loop $do-loop|068
                 local.get $0
                 local.tee $10
                 i32.const 1
                 i32.add
                 local.set $0
                 local.get $4
                 local.get $10
                 i32.load8_u
                 local.tee $10
                 i32.const 127
                 i32.and
                 local.get $3
                 i32.shl
                 i32.or
                 local.set $4
                 local.get $10
                 i32.const 128
                 i32.and
                 if
                  local.get $3
                  i32.const 7
                  i32.add
                  local.set $3
                  br $do-loop|068
                 end
                end
                local.get $0
                global.set $assembly/index/off
                local.get $9
                local.get $4
                call $assembly/options/onFunction
                local.get $14
                i32.const 1
                i32.add
                local.set $14
                br $for-loop|7
               end
              end
              br $break|1
             end
             i32.const 0
             local.set $2
             i32.const 0
             local.set $4
             global.get $assembly/index/off
             local.set $0
             loop $do-loop|071
              local.get $0
              local.tee $3
              i32.const 1
              i32.add
              local.set $0
              local.get $2
              local.get $3
              i32.load8_u
              local.tee $3
              i32.const 127
              i32.and
              local.get $4
              i32.shl
              i32.or
              local.set $2
              local.get $3
              i32.const 128
              i32.and
              if
               local.get $4
               i32.const 7
               i32.add
               local.set $4
               br $do-loop|071
              end
             end
             local.get $0
             global.set $assembly/index/off
             local.get $2
             local.set $10
             i32.const 0
             local.set $14
             loop $for-loop|8
              local.get $10
              local.get $14
              i32.gt_u
              if
               i32.const 0
               local.set $4
               i32.const 0
               local.set $3
               global.get $assembly/index/off
               local.set $0
               loop $do-loop|074
                local.get $0
                local.tee $2
                i32.const 1
                i32.add
                local.set $0
                local.get $4
                local.get $2
                i32.load8_u
                local.tee $2
                i32.const 127
                i32.and
                local.get $3
                i32.shl
                i32.or
                local.set $4
                local.get $2
                i32.const 128
                i32.and
                if
                 local.get $3
                 i32.const 7
                 i32.add
                 local.set $3
                 br $do-loop|074
                end
               end
               local.get $0
               global.set $assembly/index/off
               i32.const 0
               local.set $3
               i32.const 0
               local.set $9
               global.get $assembly/index/off
               local.set $2
               loop $do-loop|077
                local.get $2
                local.tee $0
                i32.const 1
                i32.add
                local.set $2
                local.get $3
                local.get $0
                i32.load8_u
                local.tee $0
                i32.const 127
                i32.and
                local.get $9
                i32.shl
                i32.or
                local.set $3
                local.get $0
                i32.const 128
                i32.and
                if
                 local.get $9
                 i32.const 7
                 i32.add
                 local.set $9
                 br $do-loop|077
                end
               end
               local.get $2
               global.set $assembly/index/off
               local.get $3
               local.set $2
               local.get $7
               local.tee $11
               i32.const 1
               i32.add
               local.set $7
               i32.const 0
               local.set $3
               i32.const 0
               local.set $9
               global.get $assembly/index/off
               local.set $0
               loop $do-loop|080
                local.get $0
                local.tee $12
                i32.const 1
                i32.add
                local.set $0
                local.get $3
                local.get $12
                i32.load8_u
                local.tee $12
                i32.const 127
                i32.and
                local.get $9
                i32.shl
                i32.or
                local.set $3
                local.get $12
                i32.const 128
                i32.and
                if
                 local.get $9
                 i32.const 7
                 i32.add
                 local.set $9
                 br $do-loop|080
                end
               end
               local.get $0
               global.set $assembly/index/off
               local.get $3
               local.set $12
               local.get $2
               i32.const 1
               i32.and
               if
                i32.const 0
                local.set $3
                i32.const 0
                local.set $9
                global.get $assembly/index/off
                local.set $0
                loop $do-loop|083
                 local.get $0
                 local.tee $13
                 i32.const 1
                 i32.add
                 local.set $0
                 local.get $3
                 local.get $13
                 i32.load8_u
                 local.tee $13
                 i32.const 127
                 i32.and
                 local.get $9
                 i32.shl
                 i32.or
                 local.set $3
                 local.get $13
                 i32.const 128
                 i32.and
                 if
                  local.get $9
                  i32.const 7
                  i32.add
                  local.set $9
                  br $do-loop|083
                 end
                end
                local.get $0
                global.set $assembly/index/off
               else
                i32.const -1
                local.set $3
               end
               local.get $11
               local.get $4
               i32.const 127
               i32.and
               local.get $12
               local.get $3
               local.get $2
               call $assembly/options/onTable
               local.get $14
               i32.const 1
               i32.add
               local.set $14
               br $for-loop|8
              end
             end
             br $break|1
            end
            i32.const 0
            local.set $2
            i32.const 0
            local.set $4
            global.get $assembly/index/off
            local.set $0
            loop $do-loop|086
             local.get $0
             local.tee $3
             i32.const 1
             i32.add
             local.set $0
             local.get $2
             local.get $3
             i32.load8_u
             local.tee $3
             i32.const 127
             i32.and
             local.get $4
             i32.shl
             i32.or
             local.set $2
             local.get $3
             i32.const 128
             i32.and
             if
              local.get $4
              i32.const 7
              i32.add
              local.set $4
              br $do-loop|086
             end
            end
            local.get $0
            global.set $assembly/index/off
            i32.const 0
            local.set $14
            loop $for-loop|9
             local.get $2
             local.get $14
             i32.gt_u
             if
              i32.const 0
              local.set $4
              i32.const 0
              local.set $3
              global.get $assembly/index/off
              local.set $0
              loop $do-loop|089
               local.get $0
               local.tee $9
               i32.const 1
               i32.add
               local.set $0
               local.get $4
               local.get $9
               i32.load8_u
               local.tee $9
               i32.const 127
               i32.and
               local.get $3
               i32.shl
               i32.or
               local.set $4
               local.get $9
               i32.const 128
               i32.and
               if
                local.get $3
                i32.const 7
                i32.add
                local.set $3
                br $do-loop|089
               end
              end
              local.get $0
              global.set $assembly/index/off
              local.get $8
              local.tee $10
              i32.const 1
              i32.add
              local.set $8
              i32.const 0
              local.set $3
              i32.const 0
              local.set $9
              global.get $assembly/index/off
              local.set $0
              loop $do-loop|092
               local.get $0
               local.tee $11
               i32.const 1
               i32.add
               local.set $0
               local.get $3
               local.get $11
               i32.load8_u
               local.tee $11
               i32.const 127
               i32.and
               local.get $9
               i32.shl
               i32.or
               local.set $3
               local.get $11
               i32.const 128
               i32.and
               if
                local.get $9
                i32.const 7
                i32.add
                local.set $9
                br $do-loop|092
               end
              end
              local.get $0
              global.set $assembly/index/off
              local.get $3
              local.set $11
              local.get $4
              i32.const 1
              i32.and
              if
               i32.const 0
               local.set $3
               i32.const 0
               local.set $9
               global.get $assembly/index/off
               local.set $0
               loop $do-loop|095
                local.get $0
                local.tee $12
                i32.const 1
                i32.add
                local.set $0
                local.get $3
                local.get $12
                i32.load8_u
                local.tee $12
                i32.const 127
                i32.and
                local.get $9
                i32.shl
                i32.or
                local.set $3
                local.get $12
                i32.const 128
                i32.and
                if
                 local.get $9
                 i32.const 7
                 i32.add
                 local.set $9
                 br $do-loop|095
                end
               end
               local.get $0
               global.set $assembly/index/off
              else
               i32.const 65535
               local.set $3
              end
              local.get $10
              local.get $11
              local.get $3
              local.get $4
              call $assembly/options/onMemory
              local.get $14
              i32.const 1
              i32.add
              local.set $14
              br $for-loop|9
             end
            end
            br $break|1
           end
           i32.const 0
           local.set $2
           i32.const 0
           local.set $4
           global.get $assembly/index/off
           local.set $0
           loop $do-loop|098
            local.get $0
            local.tee $3
            i32.const 1
            i32.add
            local.set $0
            local.get $2
            local.get $3
            i32.load8_u
            local.tee $3
            i32.const 127
            i32.and
            local.get $4
            i32.shl
            i32.or
            local.set $2
            local.get $3
            i32.const 128
            i32.and
            if
             local.get $4
             i32.const 7
             i32.add
             local.set $4
             br $do-loop|098
            end
           end
           local.get $0
           global.set $assembly/index/off
           i32.const 0
           local.set $14
           loop $for-loop|10
            local.get $2
            local.get $14
            i32.gt_u
            if
             i32.const 0
             local.set $3
             i32.const 0
             local.set $4
             global.get $assembly/index/off
             local.set $0
             loop $do-loop|0101
              local.get $0
              local.tee $9
              i32.const 1
              i32.add
              local.set $0
              local.get $3
              local.get $9
              i32.load8_u
              local.tee $9
              i32.const 127
              i32.and
              local.get $4
              i32.shl
              i32.or
              local.set $3
              local.get $4
              i32.const 7
              i32.add
              local.set $4
              local.get $9
              i32.const 128
              i32.and
              br_if $do-loop|0101
             end
             local.get $0
             global.set $assembly/index/off
             local.get $3
             i32.const -1
             local.get $4
             i32.shl
             i32.or
             local.get $3
             local.get $9
             i32.const 64
             i32.and
             i32.const 0
             i32.ne
             local.get $4
             i32.const 7
             i32.lt_u
             i32.and
             select
             i32.const 127
             i32.and
             local.set $11
             i32.const 0
             local.set $3
             i32.const 0
             local.set $9
             global.get $assembly/index/off
             local.set $0
             loop $do-loop|0104
              local.get $0
              local.tee $4
              i32.const 1
              i32.add
              local.set $0
              local.get $3
              local.get $4
              i32.load8_u
              local.tee $4
              i32.const 127
              i32.and
              local.get $9
              i32.shl
              i32.or
              local.set $3
              local.get $4
              i32.const 128
              i32.and
              if
               local.get $9
               i32.const 7
               i32.add
               local.set $9
               br $do-loop|0104
              end
             end
             local.get $0
             global.set $assembly/index/off
             i32.const 0
             local.set $4
             i32.const 0
             local.set $9
             i64.const 0
             local.set $15
             i64.const 0
             local.set $17
             global.get $assembly/index/off
             local.tee $0
             i32.load8_u
             local.set $10
             local.get $0
             i32.const 1
             i32.add
             global.set $assembly/index/off
             block $break|0
              block $case5|0
               block $case4|0
                block $case3|0
                 block $case2|0
                  block $case1|0
                   local.get $10
                   i32.const 65
                   i32.ne
                   if
                    local.get $10
                    i32.const 66
                    i32.eq
                    br_if $case1|0
                    local.get $10
                    i32.const 67
                    i32.eq
                    br_if $case2|0
                    local.get $10
                    i32.const 68
                    i32.eq
                    br_if $case3|0
                    local.get $10
                    i32.const 35
                    i32.eq
                    br_if $case4|0
                    br $case5|0
                   end
                   global.get $assembly/index/off
                   local.set $0
                   loop $do-loop|00
                    local.get $0
                    local.tee $10
                    i32.const 1
                    i32.add
                    local.set $0
                    local.get $9
                    local.get $10
                    i32.load8_u
                    local.tee $10
                    i32.const 127
                    i32.and
                    local.get $4
                    i32.shl
                    i32.or
                    local.set $9
                    local.get $4
                    i32.const 7
                    i32.add
                    local.set $4
                    local.get $10
                    i32.const 128
                    i32.and
                    br_if $do-loop|00
                   end
                   local.get $0
                   global.set $assembly/index/off
                   br $break|0
                  end
                  global.get $assembly/index/off
                  local.set $0
                  loop $do-loop|01
                   local.get $0
                   local.tee $4
                   i32.const 1
                   i32.add
                   local.set $0
                   local.get $17
                   local.get $4
                   i64.load8_u
                   local.tee $18
                   i64.const 127
                   i64.and
                   local.get $15
                   i64.shl
                   i64.or
                   local.set $17
                   local.get $15
                   i64.const 7
                   i64.add
                   local.set $15
                   local.get $18
                   i64.const 128
                   i64.and
                   i64.const 0
                   i64.ne
                   br_if $do-loop|01
                  end
                  local.get $0
                  global.set $assembly/index/off
                  br $break|0
                 end
                 global.get $assembly/index/off
                 local.tee $0
                 i32.load
                 drop
                 local.get $0
                 i32.const 4
                 i32.add
                 global.set $assembly/index/off
                 br $break|0
                end
                global.get $assembly/index/off
                local.tee $0
                i64.load
                drop
                local.get $0
                i32.const 8
                i32.add
                global.set $assembly/index/off
                br $break|0
               end
               global.get $assembly/index/off
               local.set $0
               loop $do-loop|031
                local.get $0
                local.tee $10
                i32.const 1
                i32.add
                local.set $0
                local.get $9
                local.get $10
                i32.load8_u
                local.tee $10
                i32.const 127
                i32.and
                local.get $4
                i32.shl
                i32.or
                local.set $9
                local.get $10
                i32.const 128
                i32.and
                if
                 local.get $4
                 i32.const 7
                 i32.add
                 local.set $4
                 br $do-loop|031
                end
               end
               local.get $0
               global.set $assembly/index/off
               br $break|0
              end
              unreachable
             end
             global.get $assembly/index/off
             local.tee $0
             i32.load8_u
             local.get $0
             i32.const 1
             i32.add
             global.set $assembly/index/off
             i32.const 11
             i32.ne
             if
              unreachable
             end
             local.get $5
             local.tee $0
             i32.const 1
             i32.add
             local.set $5
             local.get $0
             local.get $11
             local.get $3
             call $assembly/options/onGlobal
             local.get $14
             i32.const 1
             i32.add
             local.set $14
             br $for-loop|10
            end
           end
           br $break|1
          end
          i32.const 0
          local.set $2
          i32.const 0
          local.set $4
          global.get $assembly/index/off
          local.set $0
          loop $do-loop|0107
           local.get $0
           local.tee $3
           i32.const 1
           i32.add
           local.set $0
           local.get $2
           local.get $3
           i32.load8_u
           local.tee $3
           i32.const 127
           i32.and
           local.get $4
           i32.shl
           i32.or
           local.set $2
           local.get $3
           i32.const 128
           i32.and
           if
            local.get $4
            i32.const 7
            i32.add
            local.set $4
            br $do-loop|0107
           end
          end
          local.get $0
          global.set $assembly/index/off
          i32.const 0
          local.set $14
          loop $for-loop|11
           local.get $2
           local.get $14
           i32.gt_u
           if
            i32.const 0
            local.set $4
            i32.const 0
            local.set $3
            global.get $assembly/index/off
            local.set $0
            loop $do-loop|0110
             local.get $0
             local.tee $9
             i32.const 1
             i32.add
             local.set $0
             local.get $4
             local.get $9
             i32.load8_u
             local.tee $9
             i32.const 127
             i32.and
             local.get $3
             i32.shl
             i32.or
             local.set $4
             local.get $9
             i32.const 128
             i32.and
             if
              local.get $3
              i32.const 7
              i32.add
              local.set $3
              br $do-loop|0110
             end
            end
            local.get $0
            global.set $assembly/index/off
            local.get $4
            global.get $assembly/index/off
            local.tee $11
            i32.add
            global.set $assembly/index/off
            global.get $assembly/index/off
            local.tee $0
            i32.load8_u
            local.set $12
            local.get $0
            i32.const 1
            i32.add
            global.set $assembly/index/off
            i32.const 0
            local.set $3
            i32.const 0
            local.set $9
            global.get $assembly/index/off
            local.set $0
            loop $do-loop|0114
             local.get $0
             local.tee $10
             i32.const 1
             i32.add
             local.set $0
             local.get $3
             local.get $10
             i32.load8_u
             local.tee $10
             i32.const 127
             i32.and
             local.get $9
             i32.shl
             i32.or
             local.set $3
             local.get $10
             i32.const 128
             i32.and
             if
              local.get $9
              i32.const 7
              i32.add
              local.set $9
              br $do-loop|0114
             end
            end
            local.get $0
            global.set $assembly/index/off
            local.get $14
            local.get $12
            local.get $3
            local.get $11
            local.get $4
            call $assembly/options/onExport
            local.get $14
            i32.const 1
            i32.add
            local.set $14
            br $for-loop|11
           end
          end
          br $break|1
         end
         i32.const 0
         local.set $2
         i32.const 0
         local.set $4
         global.get $assembly/index/off
         local.set $0
         loop $do-loop|0117
          local.get $0
          local.tee $3
          i32.const 1
          i32.add
          local.set $0
          local.get $2
          local.get $3
          i32.load8_u
          local.tee $3
          i32.const 127
          i32.and
          local.get $4
          i32.shl
          i32.or
          local.set $2
          local.get $3
          i32.const 128
          i32.and
          if
           local.get $4
           i32.const 7
           i32.add
           local.set $4
           br $do-loop|0117
          end
         end
         local.get $0
         global.set $assembly/index/off
         local.get $2
         call $assembly/options/onStart
         br $break|1
        end
        local.get $2
        i32.const 4
        i32.eq
        if (result i32)
         local.get $0
         i32.load
         i32.const 1701667182
         i32.eq
        else
         i32.const 0
        end
        if
         i32.const 0
         local.set $2
         i32.const 0
         local.set $4
         global.get $assembly/index/off
         local.set $0
         loop $do-loop|0120
          local.get $0
          local.tee $3
          i32.const 1
          i32.add
          local.set $0
          local.get $2
          local.get $3
          i32.load8_u
          local.tee $3
          i32.const 127
          i32.and
          local.get $4
          i32.shl
          i32.or
          local.set $2
          local.get $3
          i32.const 128
          i32.and
          if
           local.get $4
           i32.const 7
           i32.add
           local.set $4
           br $do-loop|0120
          end
         end
         local.get $0
         global.set $assembly/index/off
         i32.const 0
         local.set $4
         i32.const 0
         local.set $3
         global.get $assembly/index/off
         local.set $0
         loop $do-loop|0123
          local.get $0
          local.tee $9
          i32.const 1
          i32.add
          local.set $0
          local.get $4
          local.get $9
          i32.load8_u
          local.tee $9
          i32.const 127
          i32.and
          local.get $3
          i32.shl
          i32.or
          local.set $4
          local.get $9
          i32.const 128
          i32.and
          if
           local.get $3
           i32.const 7
           i32.add
           local.set $3
           br $do-loop|0123
          end
         end
         local.get $0
         global.set $assembly/index/off
         local.get $4
         global.get $assembly/index/off
         block $break|12
          block $case3|12
           block $case2|12
            block $case1|12
             block $case0|12
              local.get $2
              br_table $case0|12 $case1|12 $case2|12 $case3|12
             end
             i32.const 0
             local.set $2
             i32.const 0
             local.set $4
             global.get $assembly/index/off
             local.set $0
             loop $do-loop|0126
              local.get $0
              local.tee $3
              i32.const 1
              i32.add
              local.set $0
              local.get $2
              local.get $3
              i32.load8_u
              local.tee $3
              i32.const 127
              i32.and
              local.get $4
              i32.shl
              i32.or
              local.set $2
              local.get $3
              i32.const 128
              i32.and
              if
               local.get $4
               i32.const 7
               i32.add
               local.set $4
               br $do-loop|0126
              end
             end
             local.get $0
             global.set $assembly/index/off
             global.get $assembly/index/off
             local.get $2
             call $assembly/options/onModuleName
             br $break|12
            end
            i32.const 0
            local.set $2
            i32.const 0
            local.set $4
            global.get $assembly/index/off
            local.set $0
            loop $do-loop|0129
             local.get $0
             local.tee $3
             i32.const 1
             i32.add
             local.set $0
             local.get $2
             local.get $3
             i32.load8_u
             local.tee $3
             i32.const 127
             i32.and
             local.get $4
             i32.shl
             i32.or
             local.set $2
             local.get $3
             i32.const 128
             i32.and
             if
              local.get $4
              i32.const 7
              i32.add
              local.set $4
              br $do-loop|0129
             end
            end
            local.get $0
            global.set $assembly/index/off
            local.get $2
            local.set $4
            i32.const 0
            local.set $0
            loop $for-loop|13
             local.get $0
             local.get $4
             i32.lt_u
             if
              i32.const 0
              local.set $3
              i32.const 0
              local.set $9
              global.get $assembly/index/off
              local.set $2
              loop $do-loop|0132
               local.get $2
               local.tee $11
               i32.const 1
               i32.add
               local.set $2
               local.get $3
               local.get $11
               i32.load8_u
               local.tee $11
               i32.const 127
               i32.and
               local.get $9
               i32.shl
               i32.or
               local.set $3
               local.get $11
               i32.const 128
               i32.and
               if
                local.get $9
                i32.const 7
                i32.add
                local.set $9
                br $do-loop|0132
               end
              end
              local.get $2
              global.set $assembly/index/off
              local.get $3
              i32.const 0
              local.set $3
              i32.const 0
              local.set $9
              global.get $assembly/index/off
              local.set $2
              loop $do-loop|0135
               local.get $2
               local.tee $12
               i32.const 1
               i32.add
               local.set $2
               local.get $3
               local.get $12
               i32.load8_u
               local.tee $12
               i32.const 127
               i32.and
               local.get $9
               i32.shl
               i32.or
               local.set $3
               local.get $12
               i32.const 128
               i32.and
               if
                local.get $9
                i32.const 7
                i32.add
                local.set $9
                br $do-loop|0135
               end
              end
              local.get $2
              global.set $assembly/index/off
              global.get $assembly/index/off
              local.tee $2
              local.get $3
              i32.add
              global.set $assembly/index/off
              local.get $2
              local.get $3
              call $assembly/options/onFunctionName
              local.get $0
              i32.const 1
              i32.add
              local.set $0
              br $for-loop|13
             end
            end
            br $break|12
           end
           i32.const 0
           local.set $2
           i32.const 0
           local.set $4
           global.get $assembly/index/off
           local.set $0
           loop $do-loop|0138
            local.get $0
            local.tee $3
            i32.const 1
            i32.add
            local.set $0
            local.get $2
            local.get $3
            i32.load8_u
            local.tee $3
            i32.const 127
            i32.and
            local.get $4
            i32.shl
            i32.or
            local.set $2
            local.get $3
            i32.const 128
            i32.and
            if
             local.get $4
             i32.const 7
             i32.add
             local.set $4
             br $do-loop|0138
            end
           end
           local.get $0
           global.set $assembly/index/off
           local.get $2
           local.set $4
           i32.const 0
           local.set $0
           loop $for-loop|14
            local.get $0
            local.get $4
            i32.lt_u
            if
             i32.const 0
             local.set $3
             i32.const 0
             local.set $9
             global.get $assembly/index/off
             local.set $2
             loop $do-loop|0141
              local.get $2
              local.tee $11
              i32.const 1
              i32.add
              local.set $2
              local.get $3
              local.get $11
              i32.load8_u
              local.tee $11
              i32.const 127
              i32.and
              local.get $9
              i32.shl
              i32.or
              local.set $3
              local.get $11
              i32.const 128
              i32.and
              if
               local.get $9
               i32.const 7
               i32.add
               local.set $9
               br $do-loop|0141
              end
             end
             local.get $2
             global.set $assembly/index/off
             local.get $3
             local.set $11
             i32.const 0
             local.set $3
             i32.const 0
             local.set $9
             global.get $assembly/index/off
             local.set $2
             loop $do-loop|0144
              local.get $2
              local.tee $12
              i32.const 1
              i32.add
              local.set $2
              local.get $3
              local.get $12
              i32.load8_u
              local.tee $12
              i32.const 127
              i32.and
              local.get $9
              i32.shl
              i32.or
              local.set $3
              local.get $12
              i32.const 128
              i32.and
              if
               local.get $9
               i32.const 7
               i32.add
               local.set $9
               br $do-loop|0144
              end
             end
             local.get $2
             global.set $assembly/index/off
             i32.const 0
             local.set $14
             loop $for-loop|15
              local.get $3
              local.get $14
              i32.gt_u
              if
               i32.const 0
               local.set $9
               i32.const 0
               local.set $13
               global.get $assembly/index/off
               local.set $2
               loop $do-loop|0147
                local.get $2
                local.tee $12
                i32.const 1
                i32.add
                local.set $2
                local.get $9
                local.get $12
                i32.load8_u
                local.tee $12
                i32.const 127
                i32.and
                local.get $13
                i32.shl
                i32.or
                local.set $9
                local.get $12
                i32.const 128
                i32.and
                if
                 local.get $13
                 i32.const 7
                 i32.add
                 local.set $13
                 br $do-loop|0147
                end
               end
               local.get $2
               global.set $assembly/index/off
               i32.const 0
               local.set $13
               i32.const 0
               local.set $16
               global.get $assembly/index/off
               local.set $2
               loop $do-loop|0150
                local.get $2
                local.tee $12
                i32.const 1
                i32.add
                local.set $2
                local.get $13
                local.get $12
                i32.load8_u
                local.tee $12
                i32.const 127
                i32.and
                local.get $16
                i32.shl
                i32.or
                local.set $13
                local.get $12
                i32.const 128
                i32.and
                if
                 local.get $16
                 i32.const 7
                 i32.add
                 local.set $16
                 br $do-loop|0150
                end
               end
               local.get $2
               global.set $assembly/index/off
               global.get $assembly/index/off
               local.tee $2
               local.get $13
               i32.add
               global.set $assembly/index/off
               local.get $11
               local.get $9
               local.get $2
               local.get $13
               call $assembly/options/onLocalName
               local.get $14
               i32.const 1
               i32.add
               local.set $14
               br $for-loop|15
              end
             end
             local.get $0
             i32.const 1
             i32.add
             local.set $0
             br $for-loop|14
            end
           end
           br $break|12
          end
          unreachable
         end
         i32.add
         global.set $assembly/index/off
         br $break|1
        else
         local.get $2
         i32.const 16
         i32.eq
         if (result i32)
          local.get $0
          i64.load
          i64.const 7011371672682196851
          i64.eq
         else
          i32.const 0
         end
         if (result i32)
          local.get $0
          i64.load offset=8
          i64.const 5499551997695193200
          i64.eq
         else
          i32.const 0
         end
         if
          i32.const 0
          local.set $2
          i32.const 0
          local.set $9
          global.get $assembly/index/off
          local.set $0
          loop $do-loop|0153
           local.get $0
           local.tee $3
           i32.const 1
           i32.add
           local.set $0
           local.get $2
           local.get $3
           i32.load8_u
           local.tee $3
           i32.const 127
           i32.and
           local.get $9
           i32.shl
           i32.or
           local.set $2
           local.get $3
           i32.const 128
           i32.and
           if
            local.get $9
            i32.const 7
            i32.add
            local.set $9
            br $do-loop|0153
           end
          end
          local.get $0
          global.set $assembly/index/off
          global.get $assembly/index/off
          local.tee $0
          local.get $2
          i32.add
          global.set $assembly/index/off
          local.get $0
          local.get $2
          call $assembly/options/onSourceMappingURL
         end
        end
        local.get $4
        local.get $11
        i32.add
        global.set $assembly/index/off
        br $break|1
       end
       global.get $assembly/index/off
       local.get $4
       i32.add
       global.set $assembly/index/off
       br $break|1
      end
      unreachable
     end
    else
     global.get $assembly/index/off
     local.get $4
     i32.add
     global.set $assembly/index/off
    end
    br $while-continue|0
   end
  end
  global.get $assembly/index/off
  local.get $1
  i32.ne
  if
   unreachable
  end
 )
)
