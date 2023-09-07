class c_575_1;
    integer i = -94;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_575_1;
    c_575_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1100x1zx10z01zxz1xzxxzxxz10zzxxzzzxzzxxxzxxxxzxxzzxxxzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
