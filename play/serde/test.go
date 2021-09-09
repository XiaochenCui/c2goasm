package main

import "math"

func ByteToFloat32(value []byte) float32 {
	return math.Float32frombits((uint32(value[0])<<24 | uint32(value[1])<<16 | uint32(value[2])<<8 | uint32(value[3])))
}

func ByteToFloat32Fast(value []byte) float32 {
	return math.Float32frombits((uint32(value[0])<<24 | uint32(value[1])<<16 | uint32(value[2])<<8 | uint32(value[3])))
}