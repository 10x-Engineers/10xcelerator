class c_2140_1;
    integer i = -355;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2140_1;
    c_2140_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z0zzz101xz1zxx1x10111xzzxz110zxzzzxzxzzzzzxzxxxxxzzzxzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
