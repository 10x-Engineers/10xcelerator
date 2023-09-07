class c_2132_1;
    integer i = -354;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2132_1;
    c_2132_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zx0x0zz01xx0xzx1zzzzx0xz0xx1xzzzxxzxxxxxxxxxxzxzxxzxxzzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
