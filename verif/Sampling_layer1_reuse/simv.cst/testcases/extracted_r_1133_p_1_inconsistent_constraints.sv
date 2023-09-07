class c_1133_1;
    integer i = -187;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1133_1;
    c_1133_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10zxx1zzxx0zzxxx1z01zx1z0xzz0z0zzxxxxxxxxxzxxzxxzxxzzxzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
