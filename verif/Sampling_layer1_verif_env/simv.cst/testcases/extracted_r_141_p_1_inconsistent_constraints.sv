class c_141_1;
    integer i = -22;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_141_1;
    c_141_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x00x10xx0z100x1zz11z1z01z1zzz0zxzxxzzxzzzxzzxxzzxxzzzxxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
