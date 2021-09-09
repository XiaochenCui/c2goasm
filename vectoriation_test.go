package archive

import (
	"environment/tools/logging"
	"environment/utils"
	"github.com/stretchr/testify/assert"
	"lightningIO/store/archive/internal/cpp_libs"
	"math/rand"
	"testing"
	"time"
)

func TestSIMD(t *testing.T) {
	count := 100000
	round := 1000
	origin := make([]float32, count)
	for i := 0; i < count; i++ {
		origin[i] = rand.Float32() * 10000
	}
	bs := make([]byte, 0)
	for _, n := range origin {
		bs = append(bs, utils.Float32ToByte(n)...)
	}

	// the normal way
	normal_result := make([]float32, count)
	for i := 0; i < count; i++ {
		normal_result[i] = utils.ByteToFloat32(bs[i*4 : i*4+4])
	}
	assert.Equal(t, origin, normal_result)

	start := time.Now()
	for r := 0; r < round; r++ {
		for i := 0; i < count; i++ {
			normal_result[i] = utils.ByteToFloat32(bs[i*4 : i*4+4])
		}
	}
	used := time.Since(start)
	logging.Printf("normal used %v", used)

	// the harsh way
	harsh_result := byteSliceToFloat32Slice(bs)
	assert.Equal(t, origin, harsh_result)

	start = time.Now()
	for r := 0; r < round; r++ {
		byteSliceToFloat32Slice(bs)
	}
	used = time.Since(start)
	logging.Printf("harsh used %v", used)

	// the bswap way
	bswap_result := byteSliceToFloat32SliceBswap(bs)
	assert.Equal(t, origin, bswap_result)
	start = time.Now()
	for r := 0; r < round; r++ {
		byteSliceToFloat32SliceBswap(bs)
	}
	used = time.Since(start)
	logging.Printf("bswap used %v", used)

	// bswap one by one
	bswap_single_result := make([]float32, count)
	for i := 0; i < count; i++ {
	}
	assert.Equal(t, origin, normal_result)

	start = time.Now()
	for r := 0; r < round; r++ {
		for i := 0; i < count; i++ {
			bswap_single_result[i] = cpp_libs.BigEndianToFloat32(bs[i*4 : i*4+4])
		}
	}
	used = time.Since(start)
	logging.Printf("bswap one by one: %v", used)

	// the SIMD way
	// simd_result := make([]float32, count)
}

func TestByteSliceToFloat32Slice(t *testing.T) {
	floats := []float32{1.23, 2.34, 3.45, 4.56}
	bs := make([]byte, 0)
	for _, n := range floats {
		bs = append(bs, utils.Float32ToByte(n)...)
	}
	logging.Printf("origin %v", bs)

	result := byteSliceToFloat32Slice(bs)
	logging.Printf("result %v", result)
	bs[0] = 0xff
	bs[1] = 0xff
	logging.Printf("result %v", result)

	result = byteSliceToFloat32SliceBswap(bs)
	logging.Printf("result %v", result)
	bs[0] = 0xff
	bs[1] = 0xff
	logging.Printf("result %v", result)
}

func TestInterfaceReverse(t *testing.T) {
	round := 1000
	array := make([][]interface{}, 0)
	row, col := 10000, 100
	for i := 0; i < row; i++ {
		array = append(array, make([]interface{}, col))
		for j := 0; j < col; j++ {
			array[i][j] = rand.Intn(100)
		}
	}
	start := time.Now()
	for r := 0; r < round; r++ {
		_ = InterfaceReverse(array)
	}
	used := time.Since(start)
	logging.Printf("used %v", used)
}

func InterfaceReverse(origin [][]interface{}) [][]interface{} {
	outerSize := len(origin)
	innerSize := len(origin[0])
	result := make([][]interface{}, innerSize)
	for i := 0; i < innerSize; i++ {
		result[i] = make([]interface{}, outerSize)
		for j := 0; j < outerSize; j++ {
			result[i][j] = origin[j][i]
		}
	}
	return result
}
