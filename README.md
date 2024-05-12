# Single_Bit_ALU
This repository contains code for a VHDL single bit ALU for assignment3 in ECSE_317

# Functionality
This ALU has 3 single bit inputs: x, y, carry in(cin) and a 3 bit opcode input: f
It also has 2 single bit outputs: carry out(Cout) and Sum(s)

This ALU has the following operations for the 3 bit opcodes below:

000: Sum = 0, Carry Out = 0
001: Sum = x
010: Sum = y, Carry Out = 1
011: Sum = Carry In, Carry Out = x
100: Sum = x or y, Carry Out = x
101: Sum = x and y, Carry Out = x
110: (Carry Out, Sum) = full adder
111: (Carry Out, Sum) = full subtractor

# Contributers
Sam Rojanasakdakul and Evan Knipp