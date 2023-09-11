class c_1529_1;
    integer i = -253;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1529_1;
    c_1529_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1x1x1z0010zz1zxzx1x1zxzx1zz11xzxzzzxxzxxxzzxxzxzxxzxzzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
