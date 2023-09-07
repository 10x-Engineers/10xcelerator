class c_963_1;
    integer i = -159;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_963_1;
    c_963_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz0x01x0x1z01z0z0x1zz0xx01010zzxzzxzzzxzxzzzxzzxzzzxxxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
