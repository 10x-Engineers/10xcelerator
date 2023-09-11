class c_13_1;
    integer i = -1;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_13_1;
    c_13_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zzx00zx11zz101xx1z0zx00zz0xxzzzzxzxxxxxxxxzzxzzzzxxxxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
