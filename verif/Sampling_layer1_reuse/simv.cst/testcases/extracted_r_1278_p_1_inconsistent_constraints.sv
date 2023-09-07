class c_1278_1;
    integer i = -211;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1278_1;
    c_1278_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xx0z1x11x0x010x10zz110000z011xxzzzxzzzzzxzzxzxxzzxzxzzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
