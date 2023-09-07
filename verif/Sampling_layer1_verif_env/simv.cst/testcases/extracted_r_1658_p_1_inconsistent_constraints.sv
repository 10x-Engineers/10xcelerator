class c_1658_1;
    integer i = -275;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1658_1;
    c_1658_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01z1110x0xz0zx10x0xzz0zz10x100xxzzzxzzzxxxzxzzzxxxzxxxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
