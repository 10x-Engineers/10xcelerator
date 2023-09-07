class c_2389_1;
    integer i = -397;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2389_1;
    c_2389_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0101xzz11xz010x0xx0xx0z1z01x0z1xxxzzzzxxxxzzxzzzxzzxzzzzzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
