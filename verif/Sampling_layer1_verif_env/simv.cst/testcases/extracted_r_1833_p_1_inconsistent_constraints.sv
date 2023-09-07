class c_1833_1;
    integer i = -304;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1833_1;
    c_1833_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1x1xzx0xz110xxz1x111zzzxz010xxzxxzzxxxzxzzxxzzzzzxzzzzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
