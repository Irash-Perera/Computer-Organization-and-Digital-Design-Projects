## Component Designing Projects with Verilog HDL.

#### In this lab series, various components of a computer are designed using Verilog HDL. The components are designed using the structural modeling approach and then tested using test benches.

#### The components designed are:

1. Lab 3 - Ripple Carry Adder
2. Lab 4 - Combinational Circuits
3. Lab 5 - Counter
4. Lab 6 - Arithmatic Unit
5. Lab 7 - 7 Segment Display

### 1. Ripple Carry Adder

#### Assigned Task:

<p>In the microprocessor, ALU does a significant job in arithmetic and logical processing. Adder/subtractor is the most important and basic element in this ALU. Here we are asked to design the logical circuit of Half Adder which is the basic component of Adder. Then using 2 Half adders, we are asked to build a Full Adder and then using 4 Full adders we should build a Ripple Carry Adder and simulate them in Vivado.</p>

##### Why some of the output of some input combinations cannot be represented by 4 LEDs and what is role of LD15?

<p>With some input combinations such as 1111+1111 we cannot represent the full output using 4 LEDs LD0-LD3 because in this combination output will be “1 1110”. So here we need an extra LED to depict the MSB of the output. That is why we use another LED like LD15. We connect 𝐶𝑜𝑢𝑡 with this LD15 to show overflowing bit.</P>

<p>Adders/Subtractors can be identified as most significant element in the ALU of the microprocessor. These adders are created with a collection of Half adders and Full Adders. Half adders are the foundation for Full Adders as well as Ripple Carry
Adders. Designing them through Vivado and checking the functionality of the logic circuits, help to reduce the cost and time. Also, it makes easy to identify different kind of bugs due to different possibilities.</p>


### 2. Combinational Circuits

#### Assigned Task:

<p>In this lab, some types of decoders as well as a multiplexer should be designed using Vivado. Here, 2 to 4 decoder, 3 to 8 decoder and 8 to 1 multiplexer will be created. 3 to 8 decoders will be created with 2 of 2 to 4 decoders as well as 8 to 1 multiplexer will be created with a 3 to 8 decoder and with some logic gates. Instead of defining separate variable for different inputs and outputs, here they will be named as busses. Finally, circuits should be simulated and should be checked for the functionality.</p>

<p>Decoders and multiplexers are major 2 components in the microprocessor. Decoder converts its 𝑛 inputs to 2^𝑛 unique outputs. In this lab, 2 to 4 decoder converts it 2 inputs into 4 and 3 to 8 decoder does the same. Multiplexers have been used to select one data according to the arrangement of the inputs. Here 8 to 1 multiplexer chooses one value from 8 values according to its inputs.
Simulating designed decoders and multiplexers via Vivado before building them physically will save a lot of cost as well as time.</p>


### 3. Counter

#### Assigned Task:

</p>We asked to create a counter- a kind of register that goes through predetermined sequence of states, using D Flip Flops. Here we are using three D Flip-Flops to create this counter to increment or decrement its state. The counting direction- clockwise or
counterclockwise, should be determined by an external input. If that input is low, counting should be done clockwise otherwise counterclockwise. D Flip-Flops that are used to build Counter, should be triggered at the rising edge of the clock signal. Here we should use some methods to slow down the clock signal too otherwise it is hard to visualize the changes in the LEDs</p>

<p>In this lab we are building a counter using three D_FFs. Significance of using flip-flops here is that they can memorize the previous state that they were. So, when building a counter this quality is very important because our increment or decrement is done to the present state. Also, counters can do increment or decrement one by one or they can skip some instances too. Here we are experiencing some skips for some input combinations. Simulating a counter via Vivado is efficient more than building them physically directly. It saves cost and time.</p>


### 4. Arithmatic Unit

#### Assigned Task:

<p>Designing an Arithmatic Unit using the components that we have designed in previous labs. Here we are using 4-bit Ripple Carry Adder, 4-bit Counter and 4-bit Combinational Circuit.</p>


### 5. 7 Segment Display

#### Assigned Task:

<p>In this lab, we are asked to design 7 segment display for the arithmetic unit that can add 2 numbers, stored in two registers. A Lookup table will be used to store the output combinations of 7 segment display for different input combinations and it will be developed using Read Only Memory (ROM). The output of the arithmetic
unit will be displayed as a hexadecimal number in the 7-segment display. After designing, the functionality of the circuit should be checked by programming the FGPA board.</p>

##### How to show results using only a single 7 segment display?

<p>In this practical, two 4-bit binary numbers which are stored in two registers are going to be added together. Depending on the numbers stored in the registers, 4-bit binary number will be generated as the output with Carry and Zero. Up to 15, we can show our output in a single 7-segment display because here we are using hexadecimal
numbers to display output. 0 to F can be displayed in a single 7-segment display without any issue. But when the output of the arithmetic unit overflows 4 bits, the LED which was allocated to light up when there is a Carry, will light up. In this way,
we can use only a single 7-segment to display the output.</p>


<p>7-segment displays can be used to display decimal numbers (in this scenario we are using 7 segment display to show hexadecimal numbers too.). When using a 7-segment display, it is very easy to understand the output and check the functionality of the arithmetic unit. These 7-segment displays can be designed to function according to a lookup table which is stored with lighting up combinations of different segments.</p>


*Xilinx Vivado 2018.2 is used for the design and testing of the components.*