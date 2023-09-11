class c_3159_1;
    integer i = -525;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3159_1;
    c_3159_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0zx1z01x1z10zxzz1zxxzz0z10z10xzxxzzxxzzzxxzzxxxxzzxzzzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
