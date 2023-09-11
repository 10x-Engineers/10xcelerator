class c_2819_1;
    integer i = -468;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2819_1;
    c_2819_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0xzzz0x1z011z1xzx0z0z1z0xz1xzzxzzzzzzzzzxxzxzzxxzzxzxxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
