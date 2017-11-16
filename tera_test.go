package tera

import (
	"sync"
	"testing"
)

func benchmarkMullW(b *testing.B, size int) {

	var wg sync.WaitGroup

	b.SetBytes(int64(size))
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		wg.Add(4)
		go func() { teraAVX512(); wg.Done() }()
		go func() { teraAVX512(); wg.Done() }()
		go func() { teraAVX512(); wg.Done() }()
		go func() { teraAVX512(); wg.Done() }()
		// go func() { teraAVX512(); wg.Done() }()
		// go func() { teraAVX512(); wg.Done() }()
		// go func() { teraAVX512(); wg.Done() }()
		// go func() { teraAVX512(); wg.Done() }()
		wg.Wait()
		//teraAVX512()
	}
}

func BenchmarkMullW(b *testing.B) {
	benchmarkMullW(b, 128*1024)
}
