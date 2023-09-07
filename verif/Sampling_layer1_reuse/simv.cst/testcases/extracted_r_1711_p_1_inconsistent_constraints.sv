class c_1711_1;
    integer i = -284;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1711_1;
    c_1711_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1zx0100z1x11z1x001z11011zx1zzxzxxzxxxzxxzzzxzxzzxxxxxzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
