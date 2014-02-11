Lab2
====

#Pre-lab

In this Pre lab we will create a 1 bit adder with simple functionality.

# 1 bit adder truth table

|Cin| A | B | Cout | S |
|---|---|---|------|---|
| 0 | 0 | 0 |  0   | 0 |
| 0 | 0 | 1 |  0   | 1 |
| 0 | 1 | 0 |  0   | 1 |
| 0 | 1 | 1 |  1   | 0 |
| 1 | 0 | 0 |  0   | 1 |
| 1 | 0 | 1 |  1   | 0 |
| 1 | 1 | 0 |  1   | 0 |
| 1 | 1 | 1 |  1   | 1 |


# full adder schematic

![1 bit adder schematic](https://raw2.github.com/jrecheverry/Lab2/master/Lab_2/Lab2_JRE/full_adder_schematic.JPG)
This schematic for a full adder matches my truth table above. the inputs A and B were exclusively added together with the carry in in order for sum to be one. Similarly, the carry out was true when A or B and the carry in were true or when A and B were true.

#full adder interface
![full adder interface](https://raw2.github.com/jrecheverry/Lab2/master/Lab_2/Lab2_JRE/full_adder_interface.jpg)
This picture of a full adder demonstrates the interface with the inputs and outputs. notice that there are three inputs and two outputs.

# full adder Testbench Output
![test bench output](https://raw2.github.com/jrecheverry/Lab2/master/Lab_2/Lab2_JRE/1bitadder_testbench.PNG)

This testbench of the full adder verifies my truth table above. I did not run into any errors when running the simulaiton.
