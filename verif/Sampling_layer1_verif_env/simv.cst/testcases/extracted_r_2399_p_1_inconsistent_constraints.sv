class c_2399_1;
    integer i = -398;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2399_1;
    c_2399_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1x1zz1zzz0x1xxx101x00xzzxxz001xxzxxxzzzzxxzzxzxxxzzzxzxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
