package archive

import (
	"lightningIO/store/archive/internal/cpp_libs"
	"reflect"
	"unsafe"
)

func byteSliceToFloat32Slice(bs []byte) (floats []float32) {
	bs = bigEndianToLittleEndian(bs)
	bsHdr := (*reflect.SliceHeader)(unsafe.Pointer(&bs))
	floatsHdr := (*reflect.SliceHeader)(unsafe.Pointer(&floats))
	floatsHdr.Data = bsHdr.Data
	floatsHdr.Len = bsHdr.Len / 4
	floatsHdr.Cap = bsHdr.Cap / 4
	return
}

// Tansform big endian to little endian, the bytes are copied
// before the transformation.
//
// for float32
func bigEndianToLittleEndian(bs []byte) []byte {
	copied := make([]byte, len(bs))
	copy(copied, bs)
	count := len(copied)
	for i := 0; i < count; i += 4 {
		copied[i], copied[i+1], copied[i+2], copied[i+3] = copied[i+3], copied[i+2], copied[i+1], copied[i]
	}
	return copied
}

func byteSliceToFloat32SliceBswap(bs []byte) (floats []float32) {
	cpp_libs.EndianSwapFloat32Array(&bs)
	bsHdr := (*reflect.SliceHeader)(unsafe.Pointer(&bs))
	floatsHdr := (*reflect.SliceHeader)(unsafe.Pointer(&floats))
	floatsHdr.Data = bsHdr.Data
	floatsHdr.Len = bsHdr.Len / 4
	floatsHdr.Cap = bsHdr.Cap / 4
	return
}
