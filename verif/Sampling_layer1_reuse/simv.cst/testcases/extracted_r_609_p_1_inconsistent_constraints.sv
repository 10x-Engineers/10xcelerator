class c_609_1;
    integer i = -100;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_609_1;
    c_609_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xxzz1x011x0z1z0x01xx0zz0zzxxxxzxxzxxzzxxzzxxxxzxxxxxxxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
