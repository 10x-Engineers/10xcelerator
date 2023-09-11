class c_2902_1;
    integer i = -482;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2902_1;
    c_2902_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x10zxx0x10x00x1111zzz0z1xx0z010xxxxxxzxzxzzzzzxxxzxxxxzxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
