class c_2993_1;
    integer i = -497;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2993_1;
    c_2993_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11xxz011x0zz00zzxx010x01zz0zxxxzzzzzzzzxzzxxxxxxzzzxxzzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
