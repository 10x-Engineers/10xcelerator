class c_3262_1;
    integer i = -542;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3262_1;
    c_3262_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1000z1xxz1zxx1xzz0xzxxzxzzxz1x0zzxzzzzxxzxxzzxzxxzxxxxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
