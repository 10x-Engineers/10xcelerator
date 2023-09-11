class c_1377_1;
    integer i = -228;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1377_1;
    c_1377_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zx0z00z0x11xzx10zxzzx110xzxzz0zxzzxxzxxzxzzzxzzzzzzxzxxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
