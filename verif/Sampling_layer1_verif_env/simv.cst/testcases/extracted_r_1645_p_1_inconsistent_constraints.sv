class c_1645_1;
    integer i = -273;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1645_1;
    c_1645_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx00zzzx1z1xx1z11z0010x000zzz100xzxzxzxxxxzxxzxzzzzzxzzzzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
