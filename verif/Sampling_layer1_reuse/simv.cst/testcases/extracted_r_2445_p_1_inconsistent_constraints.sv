class c_2445_1;
    integer i = -406;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2445_1;
    c_2445_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0100zxzxxzx0xxz1x0xx11111z0xzxxxxxxzxxzxzxzxzxxzxxxxxxzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
