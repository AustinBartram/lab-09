# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

## Summary
We learned how to use a latch with Demultiplexers and multiplexers to store memory. What was new, was usng a reset and set. 


## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Structural latchcoding looks like a logic feeding rght back into itself. While behaviioral latch code looks like a storage element that holds a state. 

### What is the meaning of always @(*) in a sensitivity block?
This runs the block regardless of whatever inout has dependencies. 

### What importance is memory to digital circuits?
memory is what allows a circuit to remember past information instead of only maintaining present inputs. SO if you change an input, until delcared to change it will remember what was the prior input. 

