class c_2326_1;
    integer i = -386;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2326_1;
    c_2326_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x1z1zx01x000xx101zzz11x1x1zxz1zzxzxxzxxxxxxzxxzxxzxzzxxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
