class c_972_1;
    integer i = -160;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_972_1;
    c_972_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxx0z1x1zzx1zzxxxxx0zzzxzzz0zxxxxxzzzxzzxxzzxzxzxxxxxzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
