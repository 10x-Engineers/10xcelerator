class c_1048_1;
    integer i = -173;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1048_1;
    c_1048_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x1x01zxz111xxzx0xxzx0x0z1z1x1xzzxxxzxzxxxzzzzxzzxzxzxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
