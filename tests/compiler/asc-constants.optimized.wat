(module
 (type $v (func))
 (memory $0 0 65535)
 (table 1 anyfunc)
 (elem (i32.const 0) $start)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (func $start (; 0 ;) (; has Stack IR ;) (type $v)
  nop
 )
)
