class c_2719_1;
    integer i = -452;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2719_1;
    c_2719_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz10z1z1011zz1zzz1z11zzz101xx10zxxzxzzzxzzxzzzxxzxxzxzzxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
