class c_923_1;
    integer i = -152;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_923_1;
    c_923_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zz00001010010x11x0zzxzzxx1101zxzzxzxzzxzxzxzxxxxzzzxxxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
