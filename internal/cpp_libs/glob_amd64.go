package cpp_libs

import (
	"reflect"
	"unsafe"
)

//go:noescape
func __Z17swap_flot32_arrayPci(buf uintptr, len int)

func EndianSwapFloat32Array(buf *[]byte) {
	sliceHdr := (*reflect.SliceHeader)(unsafe.Pointer(buf))
	__Z17swap_flot32_arrayPci(sliceHdr.Data, sliceHdr.Len)
}

//go:noescape
func __Z19big_endian_to_floatPc(buf uintptr) (v float32)

func BigEndianToFloat32(buf []byte) float32 {
	sliceHdr := (*reflect.SliceHeader)(unsafe.Pointer(&buf))
	return __Z19big_endian_to_floatPc(sliceHdr.Data)
}