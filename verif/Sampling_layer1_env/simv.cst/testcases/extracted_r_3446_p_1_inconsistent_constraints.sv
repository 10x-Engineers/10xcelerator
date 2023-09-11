class c_3446_1;
    integer i = -573;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3446_1;
    c_3446_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz0zzz0xz01zz1x1xzxz0x1x010zx0xzzxzxxzxzzxzzxxxzzzxzxzxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
