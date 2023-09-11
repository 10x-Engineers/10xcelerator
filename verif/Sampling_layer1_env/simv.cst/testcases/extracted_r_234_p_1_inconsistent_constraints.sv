class c_234_1;
    integer i = -37;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_234_1;
    c_234_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zzz1xx0x001z0xx0x1z0zzxx1x0x1zxxzxzxzxxxxxzxxzxzxxzxzzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
