# Lab-05---Combinatorial-Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Carson Brown and Patrick McClain

## Lab Summary
In this lab we created two logic circuits and combined them in Verilog. We implemented circuit A using maxterms and circuit B using minterms, then we connected the output of circuit A to the input of circuit B using the top level file. We also edited the constraints file which maps the inputs and outputs in our design to the physical switches and LED's on our basys3 board.

## Lab Questions

### 1 - Explain the role of the Top Level file.
The top level file is the connection point for the entire design. It combines the Verilog modules and connects their inputs and outputs together. Specifically, in this lab the top.v file connected the output of circuit A to input A of circuit B and mapped the remaining inputs and outputs to the switches and LED's.

### 2 - Explain the function of the Constraints file.
The constraints file maps the inputs and outputs from the top.v file to the physical pins on the FPGA. It essentially tells our Vivado program which physical pin on the basys3 board corresponds to switch[0] or led[0] along with other programmable properties.

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?
The selections worked for both circuits, but I don't think it was the most efficient choice. Circuit A had 4 outputs equal to 1, using minterms would have been better because there are fewer 1's than there are 0's. Circuit B had 7 outputs equal to 1 and 9 outputs equal to 0, so minterms are slightly shorter and I would have kept the minterm approach for circuit B.
