class c_2338_1;
    integer i = -388;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2338_1;
    c_2338_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xzz1x00000z1z0100zz1zz0zxz111xxxzxxxzzxzxzxxzxzzxzzxxzxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
