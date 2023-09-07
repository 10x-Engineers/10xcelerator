class c_1934_1;
    integer i = -321;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1934_1;
    c_1934_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0111x1z1x000xxzzzz10zx0xzzx0z0x1xzzxxxxzxzxzxzxzxzxxzxzxzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
