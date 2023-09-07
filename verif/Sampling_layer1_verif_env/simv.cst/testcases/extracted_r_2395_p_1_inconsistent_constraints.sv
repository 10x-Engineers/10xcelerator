class c_2395_1;
    integer i = -398;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2395_1;
    c_2395_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111010xxz0000zxz0z010zzxx010x0x1xxzzzzxxzxzxzzzzzzzxzxxzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
