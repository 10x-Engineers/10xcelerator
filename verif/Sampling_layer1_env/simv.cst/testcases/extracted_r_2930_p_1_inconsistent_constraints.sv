class c_2930_1;
    integer i = -487;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2930_1;
    c_2930_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1x0101xzz0zz11xx1x111x1x1x00z1xzxzxxxzzzzxzzxxzxzxzxxzzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
