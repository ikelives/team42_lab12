# Lab 11 - Counters and Dividers

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary
In this lab, we learned how to make clock dividers from two types of counters. We used behavioral verilog within the d-flip flop variants, and structrual everywhere else. 

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
- A full clock cycle encompasses the entire time it is high and the time it is low; in this case, it will remain low for 6 counts and then high for 6 counts to complete one cycle. This is 2*count. 
### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
- Because the initial state is all zeros; the first clock generates all 1's for each bit
### 3 - What width of ring counter would you use to get to an output of ~1KHz?
- Using the initial speed as specified in the lab handout: 100MHz (10^8)
- To size down from 10^8 to roughly 10^3, we would need to halve 10^8 16 times (to reach 1525.88 Hz) or 17 times (to reach 762.94 Hz); thus we would need a ring counter of width 16 or 17, depending on how close you want to be to 1,000 Hz (and whether you'd prefer being too high or too low).
- This is found with log_2(10^8) = 16.61
