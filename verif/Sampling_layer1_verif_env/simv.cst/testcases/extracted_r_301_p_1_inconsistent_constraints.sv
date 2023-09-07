class c_301_1;
    integer i = -49;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_301_1;
    c_301_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z0xz10xx10z0x00010x0xzz1zzxzz1zxxzzzxxzzxxxxzxzxxzxzzzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
