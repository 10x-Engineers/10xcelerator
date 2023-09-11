class c_1626_1;
    integer i = -269;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1626_1;
    c_1626_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011zxx0xz001x0zx00zz1xx1zzx0001zxxzzxzzzzzzxzzxxxzxxzzzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
