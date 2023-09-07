class c_3252_1;
    integer i = -540;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3252_1;
    c_3252_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0000z1x0x0xxz0z101z0x10x1x1xxxxxxxzxzxzxxzxzxzzzxxzxzzzxzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
