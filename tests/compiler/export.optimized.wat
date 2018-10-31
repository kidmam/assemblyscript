(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (memory $0 0 65535)
 (table 1 anyfunc)
 (elem (i32.const 0) $export/ns.two)
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $export/c i32 (i32.const 3))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "add" (func $export/add))
 (export "sub" (func $export/sub))
 (export "renamed_mul" (func $export/mul))
 (export "a" (global $export/a))
 (export "b" (global $export/b))
 (export "renamed_c" (global $export/c))
 (export "ns.two" (func $export/ns.two))
 (func $export/add (; 0 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $export/sub (; 1 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.sub
 )
 (func $export/mul (; 2 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.mul
 )
 (func $export/ns.two (; 3 ;) (; has Stack IR ;) (type $v)
  nop
 )
)
