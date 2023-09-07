class c_151_1;
    integer i = -24;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_151_1;
    c_151_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx00xx010x1zz0zxzz0x100xz0000xzxzzxxzzxzxzzzzxzxzxxzxxzzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
