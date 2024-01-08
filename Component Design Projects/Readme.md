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



*Xilinx Vivado 2018.2 is used for the design and testing of the components.*