#!/bin/bash

gcc -o main main.c

dotnet build -p:UseSharedCompilation=false

javac Main.java

go build main.go

# Not all platforms support Swift
if [[ "$OSTYPE" == "darwin"* && -z "$CODEQL_NO_SWIFT_COMPILATION" ]]; then
    swift build
fi

kotlinc main.kt
