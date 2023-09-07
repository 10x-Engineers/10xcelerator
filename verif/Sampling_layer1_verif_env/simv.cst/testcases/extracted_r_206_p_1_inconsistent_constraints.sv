class c_206_1;
    integer i = -33;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_206_1;
    c_206_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0011zx1zz1zxx1111x0xzzxx100zzzxxzxzzxxxzzxzxxzzxzxzzzxzzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
