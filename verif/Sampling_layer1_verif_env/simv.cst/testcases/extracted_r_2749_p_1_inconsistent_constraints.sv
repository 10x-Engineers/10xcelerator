class c_2749_1;
    integer i = -457;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2749_1;
    c_2749_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxxz011z1zz11x100x01x0zxx010zzxzxzzzxxxzzzxxzzxzxzzzxxxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
