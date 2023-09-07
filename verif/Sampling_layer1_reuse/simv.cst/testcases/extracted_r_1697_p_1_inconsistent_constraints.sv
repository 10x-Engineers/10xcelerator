class c_1697_1;
    integer i = -281;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1697_1;
    c_1697_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x1x0x010x0z0xz11xz1z0010x1xxzxzxzzxxxxzzzxxxxzxxzxxxxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
