class c_2824_1;
    integer i = -469;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2824_1;
    c_2824_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1z1100x110z000110zzzz0x0z01zxzxxzzxxxxxzxzzxxzzzzzxxzxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
