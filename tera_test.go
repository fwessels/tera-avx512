package tera

import (
	"sync"
	"testing"
)

func benchmarkMullW(b *testing.B, cores int) {

	if cores == 1 {
		for i := 0; i < b.N; i++ {
			teraAvx512Int16()
		}
	} else {

		var wg sync.WaitGroup

		for i := 0; i < b.N; i++ {
			wg.Add(cores)
			for c := 0; c < cores; c++ {
				go func() { teraAvx512Int16(); wg.Done() }()
			}
			wg.Wait()
		}
	}
}

func BenchmarkMullW(b *testing.B)        { benchmarkMullW(b, 1) }
func BenchmarkMullW_2Core(b *testing.B)  { benchmarkMullW(b, 2) }
func BenchmarkMullW_4Core(b *testing.B)  { benchmarkMullW(b, 4) }
func BenchmarkMullW_8Core(b *testing.B)  { benchmarkMullW(b, 8) }
func BenchmarkMullW_12Core(b *testing.B) { benchmarkMullW(b, 12) }
func BenchmarkMullW_16Core(b *testing.B) { benchmarkMullW(b, 16) }
func BenchmarkMullW_24Core(b *testing.B) { benchmarkMullW(b, 24) }
func BenchmarkMullW_32Core(b *testing.B) { benchmarkMullW(b, 32) }
