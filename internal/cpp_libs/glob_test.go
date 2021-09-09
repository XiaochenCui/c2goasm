package cpp_libs

import (
	"environment/utils"
	"fmt"
	"testing"
)

func TestEndianSwap(t *testing.T) {
	bs := []byte{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}
	fmt.Printf("before: %X\n", bs)
	EndianSwapFloat32Array(&bs)
	fmt.Printf("after : %X\n", bs)
}

func TestBytesToFloat32(t *testing.T) {
	v := float32(1.23)
	fmt.Printf("original: %f\n", v)
	bs := make([]byte, 4)
	utils.PutFloat32(bs, v)
	fmt.Printf("bs (from golang): %v\n", bs)

	v1 := utils.ByteToFloat32(bs)
	fmt.Printf("v1 (from golang): %v\n", v1)

	v2 := BigEndianToFloat32(bs)
	fmt.Printf("v2 (from cpp): %v\n", v2)
}
