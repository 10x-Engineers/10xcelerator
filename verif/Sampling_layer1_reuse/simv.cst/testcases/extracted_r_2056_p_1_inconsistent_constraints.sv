class c_2056_1;
    integer i = -341;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2056_1;
    c_2056_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z0zzxzxzzz0zzz0x100x1z00z01z0zxxzxzxzxxxzxzzxzxzzzzzxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
