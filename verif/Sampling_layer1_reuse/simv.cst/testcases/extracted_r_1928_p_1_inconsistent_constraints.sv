class c_1928_1;
    integer i = -320;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1928_1;
    c_1928_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz11xxx1xx0xxz11xz0z11xxx0xxx1zxxzzzxxxxxxzzzxzzzxxzzxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
