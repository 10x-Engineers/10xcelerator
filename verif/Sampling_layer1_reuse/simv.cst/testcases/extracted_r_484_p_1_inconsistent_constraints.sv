class c_484_1;
    integer i = -79;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_484_1;
    c_484_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0xz0x10z010xxxxzzzz001xx10zx0xxxxzxzxxxxzxxxzxzxxxxxzzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
