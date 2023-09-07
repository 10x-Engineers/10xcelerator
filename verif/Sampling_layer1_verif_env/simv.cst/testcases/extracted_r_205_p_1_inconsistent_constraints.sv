class c_205_1;
    integer i = -33;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_205_1;
    c_205_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz110100z0zz01z01z01z010zxxx11z0xxzzzxxxxxzxzxzzxzxxxxzxxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
