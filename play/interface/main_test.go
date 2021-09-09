package main

import (
	"fmt"
	"math/rand"
	"reflect"
	"strconv"
	"testing"
	"time"
	"unsafe"
)

func BenchmarkFillArray(b *testing.B) {
	b.Run("float array", func(b *testing.B) {
		b.StopTimer()
		float_arr := make([]float64, b.N)
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			float_arr[i] = float64(i)
		}
	})

	b.Run("interface float array", func(b *testing.B) {
		b.StopTimer()
		float_arr := make([]interface{}, b.N)
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			float_arr[i] = float64(i)
		}
	})

	b.Run("interface float array zeroval", func(b *testing.B) {
		b.StopTimer()
		float_arr := make([]interface{}, b.N)
		for i := 0; i < b.N; i++ {
			float_arr[i] = float64(0)
		}
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			float_arr[i] = float64(i)
		}
	})

	b.Run("interface int array", func(b *testing.B) {
		b.StopTimer()
		float_arr := make([]interface{}, b.N)
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			float_arr[i] = int32(i)
		}
	})

	b.Run("interface int array zeroval", func(b *testing.B) {
		b.StopTimer()
		float_arr := make([]interface{}, b.N)
		for i := 0; i < b.N; i++ {
			float_arr[i] = int32(0)
		}
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			float_arr[i] = int32(i)
		}
	})

	b.Run("interface str array", func(b *testing.B) {
		b.StopTimer()
		float_arr := make([]interface{}, b.N)
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			float_arr[i] = strconv.Itoa(i)
		}
	})

	b.Run("interface str array zeroval", func(b *testing.B) {
		b.StopTimer()
		float_arr := make([]interface{}, b.N)
		for i := 0; i < b.N; i++ {
			float_arr[i] = ""
		}
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			float_arr[i] = strconv.Itoa(i)
		}
	})

	b.Run("interface bs array", func(b *testing.B) {
		b.StopTimer()
		float_arr := make([]interface{}, b.N)
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			float_arr[i] = []byte(strconv.Itoa(i))
		}
	})

	b.Run("interface bs array zeroval", func(b *testing.B) {
		b.StopTimer()
		float_arr := make([]interface{}, b.N)
		for i := 0; i < b.N; i++ {
			float_arr[i] = []byte{}
		}
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			float_arr[i] = []byte(strconv.Itoa(i))
		}
	})
}

func BenchmarkFunctionCalling(b *testing.B) {
	b.Run("get interface", func(b *testing.B) {
		float_arr := make([]interface{}, b.N)
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			float_arr[i] = getInterface(i)
		}
		b.StopTimer()
	})

	b.Run("get interface and error", func(b *testing.B) {
		float_arr := make([]interface{}, b.N)
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			v, _ := getInterfaceWithErr(i)
			float_arr[i] = v
		}
		b.StopTimer()
	})

	b.Run("pass array", func(b *testing.B) {
		float_arr := make([]interface{}, b.N)
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			float_arr = assignInterface(float_arr, i)
		}
		b.StopTimer()
	})

	b.Run("pass array ptr", func(b *testing.B) {
		float_arr := make([]interface{}, b.N)
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			assignInterfacePtr(&float_arr, i)
		}
		b.StopTimer()
	})
}

func getInterface(i int) interface{} {
	return float64(i)
}

func getInterfaceWithErr(i int) (interface{}, error) {
	return float64(i), nil
}

func assignInterface(arr []interface{}, i int) []interface{} {
	arr[i] = float64(i)
	return arr
}

func assignInterfacePtr(arr *[]interface{}, i int) {
	(*arr)[i] = float64(i)
}

func TestFloatArr(t *testing.T) {
	count := 1000 * 10000
	arr := make([]interface{}, count)
	// for i := 0; i < count; i++ {
	// 	arr[i] = float64(i)
	// }
	start := time.Now()
	for i := 0; i < count; i++ {
		arr[i] = float64(i)
	}
	used := time.Since(start)
	t.Log("used:", used)
}

func BenchmarkFunctionDispatch(b *testing.B) {
	b.Run("trait way 0", func(b *testing.B) {
		b.StopTimer()
		arr := make([]interface{}, b.N)
		t := newTrait(1)
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			arr[i] = t.next()
		}
	})

	b.Run("poly way", func(b *testing.B) {
		b.StopTimer()
		arr := make([]interface{}, b.N)
		p := newPoly(1)
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			arr[i] = p.next()
		}
	})

	b.Run("trait way", func(b *testing.B) {
		b.StopTimer()
		arr := make([]interface{}, b.N)
		t := newTrait(1)
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			arr[i] = t.next()
		}
	})

	b.Run("poly way 2", func(b *testing.B) {
		b.StopTimer()
		arr := make([]interface{}, b.N)
		p := newPoly(1)
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			arr[i] = p.next()
		}
	})

	b.Run("trait way 2", func(b *testing.B) {
		b.StopTimer()
		arr := make([]interface{}, b.N)
		t := newTrait(1)
		b.StartTimer()
		for i := 0; i < b.N; i++ {
			arr[i] = t.next()
		}
	})
}

type trait interface {
	next() interface{}
}

func newTrait(seed int) trait {
	if seed > 0 {
		return &floatTrait{i: 0}
	}
	return &intTrait{i: 0}
}

type intTrait struct {
	i int
}

type floatTrait struct {
	i float64
}

func (t *intTrait) next() interface{} {
	t.i++
	return t.i
}

func (t *floatTrait) next() interface{} {
	t.i++
	return t.i
}

type polymorphicPretender struct {
	i    int
	f    float64
	next func() interface{}
}

func newPoly(seed int) *polymorphicPretender {
	p := polymorphicPretender{
		i: 0,
		f: 0,
	}
	if seed > 0 {
		p.next = p.nextFloat
	} else {
		p.next = p.nextInt
	}
	return &p
}

func (p *polymorphicPretender) nextInt() interface{} {
	p.i++
	return p.i
}

func (p *polymorphicPretender) nextFloat() interface{} {
	p.f++
	return p.f
}

func TestInterfaceLayout(t *testing.T) {
	v := rand.Intn(10)
	fmt.Printf("v: %d\n", v)
	var i interface{} = v

	p := unsafe.Pointer(&i)
	data := (*uintptr)(p)

	bs := make([]byte, 32)
	sliceHdr := (*reflect.SliceHeader)(unsafe.Pointer(&bs))
	sliceHdr.Data = *data

	fmt.Printf("bs: %v\n", bs)
	fmt.Printf("data: %v\n", *data)
}
