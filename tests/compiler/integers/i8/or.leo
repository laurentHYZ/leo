/*
namespace: Compile
expectation: Pass
input_file: inputs/add.in
*/

program test.aleo {    
    transition main(a: i8, b: i8, c: i8) -> bool {
        return a | b == c;
    }
}
