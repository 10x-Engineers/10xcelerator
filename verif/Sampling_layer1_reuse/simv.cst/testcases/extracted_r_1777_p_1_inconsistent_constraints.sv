class c_1777_1;
    integer i = -295;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1777_1;
    c_1777_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz010z00z10x0x0z0x10xzz1xx01xz1xxxzzxzxxzzzxxzzzzxzxzzxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
