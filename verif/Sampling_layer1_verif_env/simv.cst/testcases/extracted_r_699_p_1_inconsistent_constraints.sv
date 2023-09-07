class c_699_1;
    integer i = -115;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_699_1;
    c_699_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xx1xxz00xx1zz0100110z1xzxxzzz1xzxzxxxzzxzzxzxxzxzzzxxzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
