#!/bin/bash
generateAst() {
    javac -d bin -cp src src/tool/*.java
    java -cp bin tool.GenerateAst "./src/lox"
}

build() {
    generateAst
    javac -d bin -cp src src/lox/*.java
}
run() {
    java -cp bin lox.Lox $1
}

case $1 in
"build")
    build
;;

"run")
    build
    run $2
;;
*) echo "Invalid command" ;;
esac


