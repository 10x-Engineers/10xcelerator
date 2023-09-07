class c_937_1;
    integer i = -155;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_937_1;
    c_937_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzzzx01z1z0x1x0zzz0110zz01110xxxzzzxzxxxzzzzzzzzzxxzzxxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
