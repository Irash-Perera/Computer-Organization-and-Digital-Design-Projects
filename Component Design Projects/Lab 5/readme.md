
### Counter

#### Assigned Task:

</p>We asked to create a counter- a kind of register that goes through predetermined sequence of states, using D Flip Flops. Here we are using three D Flip-Flops to create this counter to increment or decrement its state. The counting direction- clockwise or
counterclockwise, should be determined by an external input. If that input is low, counting should be done clockwise otherwise counterclockwise. D Flip-Flops that are used to build Counter, should be triggered at the rising edge of the clock signal. Here we should use some methods to slow down the clock signal too otherwise it is hard to visualize the changes in the LEDs</p>

<p>In this lab we are building a counter using three D_FFs. Significance of using flip-flops here is that they can memorize the previous state that they were. So, when building a counter this quality is very important because our increment or decrement is done to the present state. Also, counters can do increment or decrement one by one or they can skip some instances too. Here we are experiencing some skips for some input combinations. Simulating a counter via Vivado is efficient more than building them physically directly. It saves cost and time.</p>