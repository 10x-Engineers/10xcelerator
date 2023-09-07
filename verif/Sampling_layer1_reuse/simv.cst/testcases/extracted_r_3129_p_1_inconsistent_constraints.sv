class c_3129_1;
    integer i = -520;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3129_1;
    c_3129_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzz00zz1zxzz1z0zzz100zxzz10zx00zzzxxzzzxzzzzzzxxzzzzxxzxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
