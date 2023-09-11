class c_1498_1;
    integer i = -248;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1498_1;
    c_1498_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1101111010xxxxxx0x0xxzz100xzxzzzxxxxzzzzzxxzxxzzxxzzxzzzxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
