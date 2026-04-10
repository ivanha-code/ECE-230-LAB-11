# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Ivan Ha & Abigail Ames
## Summary
We learned how to make a MC counter.
We learned how to make an RC counter.
We learned how to make a ripple counter.
We learned how to use D flip-flops, T flip-flops, and full adders to implement sequential circuits.
We learned how to use the reset
## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
It because of the toggle, it takes one full wave cycle, such as High, then low, it takes 2 high lows to make 1 output pulse.
### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
Some circuits are forced to be at 1 if it starts at 0000.
### 3 - What width of ring counter would you use to get to an output of ~1KHz?
The width depends on the input clock. for example if the clock is 10kHz use a 10bit and 1MHz use a 1000 bit counter.
