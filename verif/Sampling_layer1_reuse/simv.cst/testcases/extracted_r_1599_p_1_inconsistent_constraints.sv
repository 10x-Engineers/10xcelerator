class c_1599_1;
    integer i = -265;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1599_1;
    c_1599_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xzx0x0111110z0x0x01zxz1x0zzzx0xxxzzzzxzzxzxzxxzxxzzzxzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
