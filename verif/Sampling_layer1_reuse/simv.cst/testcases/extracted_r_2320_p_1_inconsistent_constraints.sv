class c_2320_1;
    integer i = -385;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2320_1;
    c_2320_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1xz0zzxz11x1z1z10x1z1xz110xz1zzxzzxzzzzxzzzzzzzzxxxzxxzzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
