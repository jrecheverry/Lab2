Lab2
====

#Pre-lab

In this Pre lab we will create a 1 bit adder with simple functionality.

# Full adder truth table

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

Boolean equation: Sum= Anot*Bnot*C + Anot*B*Cnot + A*Bnot*Cnot + A*B*C

Cout= B*C + A*C + A*B

# Full adder schematic

![1 bit adder schematic](https://raw2.github.com/jrecheverry/Lab2/master/Lab_2/Lab2_JRE/full_adder_schematic.JPG)
This schematic for a full adder matches my truth table above. the inputs A and B were exclusively added together with the carry in in order for sum to be one. Similarly, the carry out was true when A or B and the carry in were true or when A and B were true.

# Full adder interface
![full adder interface](https://raw2.github.com/jrecheverry/Lab2/master/Lab_2/Lab2_JRE/full_adder_interface.jpg)
This picture of a full adder demonstrates the interface with the inputs and outputs. notice that there are three inputs and two outputs.

# Full adder Testbench Output
![test bench output](https://raw2.github.com/jrecheverry/Lab2/master/Lab_2/Lab2_JRE/1bitadder_testbench.PNG)

This testbench of the full adder verifies my truth table above. I did not run into any errors when running the simulaiton.

# Main Lab
For the main lab, we are tasked with creating a 4 bit adder that is capable of adding/subtracting and self-checking for over flow.

#Process
I was unable to complete a successful subtractor or overflow check for the four bit adder. The addition took a majority of the time due to getting used to the program. It was difficult to understand how to translate the knowledge of the device to actual coding. However, I am giving it additional hours to familiarize myself with the concepts.

#Testbench of four bit adder
My actual test bench output worked at first but I tampered with the code and could not figure out how to get it back to normal.

#Error 
As I stated earlier, I was unable to completely familirize myself with the program language and as a consequence, could not fully complete the lab. There was error in the testbench that ultimately would not allow me to progress because I could not figure out what went wrong.

