class c_1036_1;
    integer i = -171;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1036_1;
    c_1036_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1xzz00z0110zxx0zxx100x0xz1xz0zxxxxzzzxxxxxxzxxzxzxzxxxzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
