### 7 Segment Display

#### Assigned Task:

<p>In this lab, we are asked to design 7 segment display for the arithmetic unit that can add 2 numbers, stored in two registers. A Lookup table will be used to store the output combinations of 7 segment display for different input combinations and it will be developed using Read Only Memory (ROM). The output of the arithmetic
unit will be displayed as a hexadecimal number in the 7-segment display. After designing, the functionality of the circuit should be checked by programming the FGPA board.</p>

##### How to show results using only a single 7 segment display?

<p>In this practical, two 4-bit binary numbers which are stored in two registers are going to be added together. Depending on the numbers stored in the registers, 4-bit binary number will be generated as the output with Carry and Zero. Up to 15, we can show our output in a single 7-segment display because here we are using hexadecimal
numbers to display output. 0 to F can be displayed in a single 7-segment display without any issue. But when the output of the arithmetic unit overflows 4 bits, the LED which was allocated to light up when there is a Carry, will light up. In this way,
we can use only a single 7-segment to display the output.</p>


<p>7-segment displays can be used to display decimal numbers (in this scenario we are using 7 segment display to show hexadecimal numbers too.). When using a 7-segment display, it is very easy to understand the output and check the functionality of the arithmetic unit. These 7-segment displays can be designed to function according to a lookup table which is stored with lighting up combinations of different segments.</p>