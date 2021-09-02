# install

```bash
git clone https://github.com/XiaochenCui/c2goasm.git
cd c2goasm
go install ./...
```

# Q&A

## error: "invalid flag in #cgo CFLAGS: -mfma"

fma instruction:
https://en.wikipedia.org/wiki/FMA_instruction_set

related issue:
https://github.com/golang/go/issues/23749

solution:
go env -w "CGO_CFLAGS_ALLOW=-mfma"
