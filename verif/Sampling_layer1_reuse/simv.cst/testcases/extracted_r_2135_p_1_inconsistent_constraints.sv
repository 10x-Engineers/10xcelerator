class c_2135_1;
    integer i = -354;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2135_1;
    c_2135_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z100zxz1xzxz01zxx1x0xzx00z110z1zxxzzzzzzxxzxxxxxzzxxzxxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
