class c_2837_1;
    integer i = -471;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2837_1;
    c_2837_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0xxx011x1zzz110xzz101010z0z10xzxzzxzxxxxxzxxxzxxzxxxxxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
