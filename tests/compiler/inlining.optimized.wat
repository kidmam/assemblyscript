(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (memory $0 1 65535)
 (data (i32.const 8) "\0b\00\00\00i\00n\00l\00i\00n\00i\00n\00g\00.\00t\00s")
 (table 2 anyfunc)
 (elem (i32.const 0) $null $inlining/test_funcs~anonymous|1)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $inlining/test))
 (start $start)
 (func $inlining/test (; 1 ;) (; has Stack IR ;) (type $i) (result i32)
  i32.const 3
 )
 (func $inlining/test_funcs~anonymous|1 (; 2 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
 )
 (func $inlining/test_funcs (; 3 ;) (; has Stack IR ;) (type $v)
  i32.const 1
  set_global $~argc
  i32.const 2
  i32.const 1
  call_indirect (type $ii)
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 68
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 4 ;) (; has Stack IR ;) (type $v)
  call $inlining/test
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 10
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $inlining/test_funcs
 )
 (func $null (; 5 ;) (; has Stack IR ;) (type $v)
  nop
 )
)
