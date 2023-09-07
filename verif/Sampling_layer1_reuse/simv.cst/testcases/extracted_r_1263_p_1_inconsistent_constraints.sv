class c_1263_1;
    integer i = -209;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1263_1;
    c_1263_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000000z1xzzz1x0xz11xxxx0xx01x0x1zzzxzxxxzzxzzzxxxxzxzzzxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
