class c_1789_1;
    integer i = -297;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1789_1;
    c_1789_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0z1x0x00x11x1zz11zx00z01z01zzxxzzzzxzzxxxxxzxxzxzzzzzzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
