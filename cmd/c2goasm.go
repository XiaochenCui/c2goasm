/*
 * Minio Cloud Storage, (C) 2017 Minio, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"os/exec"
	"github.com/XiaochenCui/c2goasm/lib"
	"strings"
)

var (
	assembleFlag = flag.Bool("a", false, "Immediately invoke asm2plan9s")
	stripFlag    = flag.Bool("s", false, "Strip comments")
	compactFlag  = flag.Bool("c", false, "Compact byte codes")
	formatFlag   = flag.Bool("f", false, "Format using asmfmt")
	targetFlag   = flag.String("t", "x86", "Target machine of input code")
)

func main() {

	flag.Parse()

	if flag.NArg() < 2 {
		fmt.Printf("error: not enough input files specified\n\n")
		fmt.Println("usage: c2goasm /path/to/c-project/build/SomeGreatCode.cpp.s SomeGreatCode_amd64.s")
		return
	}
	assemblyFile := flag.Arg(1)
	if !strings.HasSuffix(assemblyFile, ".s") {
		fmt.Printf("error: second parameter must have '.s' extension\n")
		return
	}

	goCompanion := assemblyFile[:len(assemblyFile)-2] + ".go"
	if _, err := os.Stat(goCompanion); os.IsNotExist(err) {
		fmt.Printf("error: companion '.go' file is missing for %s\n", flag.Arg(1))
		return
	}

	fmt.Println("Processing", flag.Arg(0))
	lines, err := lib.readLines(flag.Arg(0))
	if err != nil {
		log.Fatalf("readLines: %s", err)
	}

	result, err := lib.process(lines, goCompanion)
	if err != nil {
		fmt.Print(err)
		os.Exit(-1)
	}

	err = lib.writeLines(result, assemblyFile, true)
	if err != nil {
		log.Fatalf("writeLines: %s", err)
	}

	if *assembleFlag {
		fmt.Println("Invoking asm2plan9s on", assemblyFile)
		cmd := exec.Command("asm2plan9s", assemblyFile)
		_, err := cmd.CombinedOutput()
		if err != nil {
			log.Fatalf("asm2plan9s: %v", err)
		}
	}

	if *stripFlag {
		lib.stripGoasmComments(assemblyFile)
	}

	if *compactFlag {
		lib.compactOpcodes(assemblyFile)
	}

	if *formatFlag {
		cmd := exec.Command("asmfmt", "-w", assemblyFile)
		_, err := cmd.CombinedOutput()
		if err != nil {
			log.Fatalf("asmfmt: %v", err)
		}
	}
}
