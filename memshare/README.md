# Memory Share Demo
## Description
This Demo is using Nodejs for implementation.  
The main purpose is share memory between Nodejs side and AssemblyScript side.  
1. after run the demo, it will print:  
    ```
    hello world
    hhllo world
    ```
2. the first `hello world` is from the function `trace`, after AS call `trace` function, we get the offset of the string.
3. the second `hhllo world` is that, after we get the position of string, we can change the value with this offset position. so if AS call `trace` again, actually the value of linear memory has been changed.  

Technically we can use shared memory without limitation, this `trace` function is a string demo, you can also use this method to share objects (need to embed it on Nodejs side) in linear memory.  

## Build
`npm install`
## Run Demo  
`npm run test`
