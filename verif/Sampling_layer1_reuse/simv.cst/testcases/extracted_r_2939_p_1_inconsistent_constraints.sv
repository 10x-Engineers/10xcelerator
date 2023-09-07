class c_2939_1;
    integer i = -488;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2939_1;
    c_2939_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1z10xxx0000001z1x1z1100xxxzz0zzxzxzxxzxzzzxzzzzzxxxxzxxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
