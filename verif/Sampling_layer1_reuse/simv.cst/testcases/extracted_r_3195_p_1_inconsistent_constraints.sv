class c_3195_1;
    integer i = -531;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3195_1;
    c_3195_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11xxx0011xxxzx0z001z1zzzz1zx0x0zzxzzzxxxzxxzxxxxxzzzxxzxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
