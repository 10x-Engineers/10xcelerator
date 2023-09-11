class c_2292_1;
    integer i = -380;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2292_1;
    c_2292_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1xzz00x1z10x1010z0x10010xx01zzzxzzzxzxzxzxxzxzzxxzzxzxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram