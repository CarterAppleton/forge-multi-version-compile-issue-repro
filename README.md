This project repros the issue found in foundry issues:
- https://github.com/foundry-rs/foundry/issues/4109
- https://github.com/foundry-rs/foundry/issues/2983

The issue seems to require two test files with different solidity versions. With two source files of different versions but a single test file of a single version, re-compilation caching works as expected.

Sample output when saving repeatedly with no changes:
```
➜ forge test --watch
[⠰] Compiling...
[⠃] Compiling 1 files with 0.6.12
[⠒] Solc 0.6.12 finished in 1.47s
Compiler run successful (with warnings)
warning[2018]: lib/forge-std/src/StdCheats.sol:191:5: Warning: Function state mutability can be restricted to pure
    function assumeNoPrecompiles(address addr) internal virtual {
    ^ (Relevant source part starts here and spans across multiple lines).



Running 2 tests for test/612Counter.t.sol:CounterTest
[PASS] testIncrement() (gas: 28349)
[PASS] testSetNumber(uint256) (runs: 256, μ: 27352, ~: 28363)
Test result: ok. 2 passed; 0 failed; finished in 8.63ms

Running 2 tests for test/Counter.t.sol:CounterTest
[PASS] testIncrement() (gas: 28356)
[PASS] testSetNumber(uint256) (runs: 256, μ: 27175, ~: 28342)
Test result: ok. 2 passed; 0 failed; finished in 8.60ms
[⠰] Compiling...
[⠘] Compiling 1 files with 0.6.12
[⠊] Solc 0.6.12 finished in 1.39s
Compiler run successful (with warnings)
warning[2018]: lib/forge-std/src/StdCheats.sol:191:5: Warning: Function state mutability can be restricted to pure
    function assumeNoPrecompiles(address addr) internal virtual {
    ^ (Relevant source part starts here and spans across multiple lines).



Running 2 tests for test/612Counter.t.sol:CounterTest
[PASS] testIncrement() (gas: 28349)
[PASS] testSetNumber(uint256) (runs: 256, μ: 27507, ~: 28363)
Test result: ok. 2 passed; 0 failed; finished in 5.76ms
[⠰] Compiling...
[⠘] Compiling 16 files with 0.6.12
[⠊] Solc 0.6.12 finished in 1.37s
Compiler run successful (with warnings)
warning[2018]: lib/forge-std/src/StdCheats.sol:191:5: Warning: Function state mutability can be restricted to pure
    function assumeNoPrecompiles(address addr) internal virtual {
    ^ (Relevant source part starts here and spans across multiple lines).



Running 2 tests for test/612Counter.t.sol:CounterTest
[PASS] testIncrement() (gas: 28349)
[PASS] testSetNumber(uint256) (runs: 256, μ: 27352, ~: 28363)
Test result: ok. 2 passed; 0 failed; finished in 5.52ms
```