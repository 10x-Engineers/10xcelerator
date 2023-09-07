class c_2529_1;
    integer i = -420;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2529_1;
    c_2529_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1x10x1x1x00zz1x1xx01zx00zxzx0xzzzzxxxzzzxxxzxxzzzxxzxxxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
