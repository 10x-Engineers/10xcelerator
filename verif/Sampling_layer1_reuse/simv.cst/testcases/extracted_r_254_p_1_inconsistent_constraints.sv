class c_254_1;
    integer i = -41;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_254_1;
    c_254_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z1000x1zzx0x1x100xxzzzx01z110zzxzxzzxxzzxzxzxzxxzzzxzzxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
