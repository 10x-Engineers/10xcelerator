class c_3434_1;
    integer i = -571;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3434_1;
    c_3434_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx110zzxz0zx00xxx1x1z1x110zx01z1xzxxxzxxxzzxzzzxxzzxxxxxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
