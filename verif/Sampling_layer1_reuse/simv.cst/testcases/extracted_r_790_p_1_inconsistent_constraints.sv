class c_790_1;
    integer i = -130;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_790_1;
    c_790_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx0100z1z0x0z10xzz0zz001x0zxz1zzzxzxxzxxzzxxxzxzxxxxzzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
