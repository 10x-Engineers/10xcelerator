class c_2518_1;
    integer i = -418;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2518_1;
    c_2518_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z0xz0zz11010010x1x010x1z1x1x1zxxzxzzxzzzxxzxxxxxzxxzzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
