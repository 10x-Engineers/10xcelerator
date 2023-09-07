class c_1015_1;
    integer i = -168;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1015_1;
    c_1015_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxx01z0z01x00z10zx0z000z111zz01zxxzzzzxxzxzxxxxzzzxxxxzxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
