class c_1107_1;
    integer i = -183;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1107_1;
    c_1107_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xz0z0xxz0zx0z0zx0x1z11x1xx100xxxxxzxxxxxzzxzzxxzxzzxzzzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
