package tera

import (
	"sync"
	"testing"
)

func benchmarkMullW(b *testing.B, cores int, f func()) {

	if cores == 1 {
		for i := 0; i < b.N; i++ {
			f()
		}
	} else {

		var wg sync.WaitGroup

		for i := 0; i < b.N; i++ {
			wg.Add(cores)
			for c := 0; c < cores; c++ {
				go func() { f(); wg.Done() }()
			}
			wg.Wait()
		}
	}
}

func BenchmarkMulInt16(b *testing.B)        { benchmarkMullW(b, 1, teraAvx512Int16) }
func BenchmarkMulInt16_2Core(b *testing.B)  { benchmarkMullW(b, 2, teraAvx512Int16) }
func BenchmarkMulInt16_4Core(b *testing.B)  { benchmarkMullW(b, 4, teraAvx512Int16) }
func BenchmarkMulInt16_8Core(b *testing.B)  { benchmarkMullW(b, 8, teraAvx512Int16) }
func BenchmarkMulInt16_12Core(b *testing.B) { benchmarkMullW(b, 12, teraAvx512Int16) }
func BenchmarkMulInt16_16Core(b *testing.B) { benchmarkMullW(b, 16, teraAvx512Int16) }
func BenchmarkMulInt16_24Core(b *testing.B) { benchmarkMullW(b, 24, teraAvx512Int16) }
func BenchmarkMulInt16_32Core(b *testing.B) { benchmarkMullW(b, 32, teraAvx512Int16) }

func BenchmarkMulInt32(b *testing.B)        { benchmarkMullW(b, 1, teraAvx512Int32) }
func BenchmarkMulInt32_2Core(b *testing.B)  { benchmarkMullW(b, 2, teraAvx512Int32) }
func BenchmarkMulInt32_4Core(b *testing.B)  { benchmarkMullW(b, 4, teraAvx512Int32) }
func BenchmarkMulInt32_8Core(b *testing.B)  { benchmarkMullW(b, 8, teraAvx512Int32) }
func BenchmarkMulInt32_12Core(b *testing.B) { benchmarkMullW(b, 12, teraAvx512Int32) }
func BenchmarkMulInt32_16Core(b *testing.B) { benchmarkMullW(b, 16, teraAvx512Int32) }
func BenchmarkMulInt32_24Core(b *testing.B) { benchmarkMullW(b, 24, teraAvx512Int32) }
func BenchmarkMulInt32_32Core(b *testing.B) { benchmarkMullW(b, 32, teraAvx512Int32) }
