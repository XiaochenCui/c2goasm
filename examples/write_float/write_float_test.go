package writefloat

import (
	"bytes"
	"fmt"
	"math"
	"testing"
)

func TestWriteFloat(t *testing.T) {
	v := float32(12.3)
	buf := make([]byte, 5)
	fmt.Printf("before: %X\n", buf)
	write_float(&v, &buf)
	fmt.Printf("after : %X\n", buf)
}

func BenchmarkWriteFloat(b *testing.B) {
	buf := &bytes.Buffer{}
	for i := float32(0); i < 10000; i++ {
		WriteFloat32(buf, i)
	}
}

func BenchmarkWriteFloatPlan9(b *testing.B) {
	buf := make([]byte, 5)
	for i := float32(0); i < 10000; i++ {
		write_float(&i, &buf)
	}
}

const (
	mask = 255
)

func WriteFloat32(buf *bytes.Buffer, v float32) (n int, err error) {
	value := math.Float32bits(v)
	return buf.Write([]byte{0, byte((value >> 24) & mask), byte((value >> 16) & mask), byte((value >> 8) & mask), byte(value & mask)})
}
