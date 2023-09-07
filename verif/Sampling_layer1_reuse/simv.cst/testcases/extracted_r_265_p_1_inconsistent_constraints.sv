class c_265_1;
    integer i = -43;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_265_1;
    c_265_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10000z0011xzzx11110zzz11x01xxxxxzxzzxzzzzxxxzxxzzxzxxxzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
