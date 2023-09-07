class c_3351_1;
    integer i = -557;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3351_1;
    c_3351_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x0zz1zxx001x0xz0xx01zz10x0101xzxxzxzxxzzxxxzxzxzzzzzzxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
