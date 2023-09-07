class c_2815_1;
    integer i = -468;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2815_1;
    c_2815_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz0z11z1x0zzx00x001zz101z11z01xxzxxzzzzxzxzzzxxzxxzzzzzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
