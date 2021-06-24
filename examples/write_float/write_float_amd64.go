package writefloat

import (
	"reflect"
	"unsafe"
)

//go:noescape
func __Z11write_floatPfPc(v unsafe.Pointer, buf uintptr)

func write_float(v *float32, buf *[]byte) {
	sliceHdr := (*reflect.SliceHeader)(unsafe.Pointer(buf))
	__Z11write_floatPfPc(unsafe.Pointer(v), sliceHdr.Data)
}
