class c_2843_1;
    integer i = -472;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2843_1;
    c_2843_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1x0z01z1x1xxxx0zzx0x0zx1x11zzzxzzxzzxzzzzxxzzxxxzzxzxzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
