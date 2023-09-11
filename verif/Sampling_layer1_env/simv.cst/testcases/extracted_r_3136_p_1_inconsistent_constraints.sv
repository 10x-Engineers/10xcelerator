class c_3136_1;
    integer i = -521;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3136_1;
    c_3136_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0zx00x0111z010xzzxz1zzxxz00xzzzxxxzzzxzzxzxxxxzzzxxxzxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
