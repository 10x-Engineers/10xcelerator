class c_639_1;
    integer i = -105;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_639_1;
    c_639_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0xzz01010xxz0z010z0zzz1zzx11xxxxzzzxzxxzzzxzzxzzzxxxzzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
