# tera-avx512

Experiments to investigate the performance of AVX512 instructions.

```
$ benchcmp google-cloud-single.txt azure-single.txt 
benchmark              old ns/op     new ns/op     delta
BenchmarkMulInt16      1276869       1047499       -17.96%
BenchmarkMulInt32      2660917       2218999       -16.61%
BenchmarkMulInt64      3867314       3406000       -11.93%
BenchmarkMulDouble     1260124       1061501       -15.76%
BenchmarkMulSingle     1260192       1048001       -16.84%
```

| Category            | Google Cloud |         Azure |
| --------------------|--------------|-------------- |
| CPU(s)              |           24 |             4 |
| Thread(s) per core  |            2 |             2 |
| Core(s) per socket  |           12 |             2 |
| Model name          |         Xeon | Platinum 8168 |
| Stepping            |            3 |             4 |
| CPU MHz             |     2000.168 |      2694.000 |
| BogoMIPS            |      4000.33 |       5388.00 |
| Hypervisor vendor   |          KVM |     Microsoft |
| Virtualization type |         full |          full |
| L1d cache           |          32K |           32K |
| L1i cache           |          32K |           32K |
| L2 cache            |         256K |         1024K |
| L3 cache            |       56320K |        33792K |
