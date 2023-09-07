class c_233_1;
    integer i = -37;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_233_1;
    c_233_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z1001zz110xz0z1z11z0000zx0x1zzxzxxzxxxzxxxxzzxzzxzzzzzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
