(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (memory $0 1 65535)
 (data (i32.const 8) "\0e\00\00\00s\00t\00a\00t\00i\00c\00-\00t\00h\00i\00s\00.\00t\00s")
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $static-this/Foo.bar (mut i32) (i32.const 42))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $static-this/Foo.getBar (; 1 ;) (; has Stack IR ;) (type $i) (result i32)
  get_global $static-this/Foo.bar
 )
 (func $start (; 2 ;) (; has Stack IR ;) (type $v)
  call $static-this/Foo.getBar
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 3 ;) (; has Stack IR ;) (type $v)
  nop
 )
)
