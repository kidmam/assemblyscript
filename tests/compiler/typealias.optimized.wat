(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 0 65535)
 (table 1 anyfunc)
 (elem (i32.const 0) $start)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "alias" (func $typealias/alias))
 (func $typealias/alias (; 0 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
 )
 (func $start (; 1 ;) (; has Stack IR ;) (type $v)
  nop
 )
)
