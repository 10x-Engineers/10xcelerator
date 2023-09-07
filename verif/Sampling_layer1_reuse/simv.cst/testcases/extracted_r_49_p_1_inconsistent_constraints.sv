class c_49_1;
    integer i = -7;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_49_1;
    c_49_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111zx1zxxzzx0z0z1x0z01101xx10000xxzzzzzxxxzxxzzzxzzxxzzzzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
