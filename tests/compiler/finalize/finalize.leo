/*
namespace: Compile
expectation: Pass
*/

program test.aleo {    
    mapping account: address => u64;
    mapping values: u8 => u8;
    
    transition mint_public(public receiver: address, public amount: u64) {
        async finalize(receiver, amount);
    }
    
    finalize mint_public (public receiver: address, public amount: u64) {
        increment(account, receiver, amount);
    }
    
    transition finalize_no_params() {
        async finalize();
    }
    
    finalize finalize_no_params() {
        increment(values, 0u8, 1u8);
        increment(account, self.caller, 1u64);
    }
}
