class c_2649_1;
    integer i = -440;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2649_1;
    c_2649_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz1z0xx1x0111z1x1x0zz0x001110xzxxzzxxxzzxxxzxzxxzxzxzxxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
