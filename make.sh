#!/bin/bash

build() {
    javac -d bin -cp src src/lox/*.java
}
run() {
    java -cp bin lox.Lox
}

case $1 in
"build")
    build
;;

"run")
    build
    run
;;
*) echo "Invalid command" ;;
esac

# javac -cp . lox/*.java 
# jar cvmf src/lox/MANIFEST.mf bin/lox/lox.jar bin/lox/*.class
# jar cvf example.jar com/baeldung/manifest/AppExample.class

# jar cvf classes.jar .*.class

