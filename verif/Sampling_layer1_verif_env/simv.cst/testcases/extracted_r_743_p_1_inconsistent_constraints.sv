class c_743_1;
    integer i = -122;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_743_1;
    c_743_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx00xx010z00001x0z101z1xxz0zz1xxxzzxxzzzxzxzxxxxzxzzzzxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
