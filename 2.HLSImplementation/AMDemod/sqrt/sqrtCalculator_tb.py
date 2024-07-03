from amaranth import *
from amaranth.sim import *
from sqrtCalculator import SqrtCalculator

# Assuming SqrtCalculator class is already defined as you provided.

def test_sqrt():
    sqrtCalculator = SqrtCalculator()
    sim = Simulator(sqrtCalculator)
    sim.add_clock(12.5e-9) # 80 Mhz clock frequency

    def process():
        # Test input value
        yield sqrtCalculator.num.eq(25)  # Set input number to 25 (square root should be 5)
        #yield sqrtCalculator.a.eq(25)
        #yield sqrtCalculator.q.eq(0)
        #yield sqrtCalculator.right.eq(0)
        #yield sqrtCalculator.left.eq(0)
        #yield sqrtCalculator.r.eq(0)

        yield Tick()       # Wait for 1 time unit to allow calculation
        
        #test_value = yield Cat(sqrtCalculator.num[0:5], 1)
        #num_value = yield sqrtCalculator.num
        #a_value = yield sqrtCalculator.a               
        #q_value = yield sqrtCalculator.q
        #left_value = yield sqrtCalculator.left
        #right_value = yield sqrtCalculator.right
        #r_value = yield sqrtCalculator.r

        #a_value1 = yield sqrtCalculator.a[0:29]
        
        #print(f"Test value:{test_value}")
        #print(f"Value of num: {num_value}")     
        #print(f"Value of a[0:29]: {a_value1}")     
        #print(f"Value of a: {a_value}")    
        #print(f"Value of q: {q_value}")     
        #print(f"Value of left: {left_value}")     
        #print(f"Value of right: {right_value}")     
        #print(f"Value of r: {r_value}")     

        # Output the result after the calculation period
        sqrt_value = yield sqrtCalculator.sqrt_result
        print(f"Square root of 25 is: {sqrt_value}")
   
    sim.add_process(process)

    with sim.write_vcd('bench.vcd', 'bench.gtkw'):
        # Let's run for a quite long time
        sim.run_until(2, )


if __name__ == "__main__":
    test_sqrt()