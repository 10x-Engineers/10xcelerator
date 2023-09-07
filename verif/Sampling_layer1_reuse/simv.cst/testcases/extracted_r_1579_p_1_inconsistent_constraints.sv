class c_1579_1;
    integer i = -262;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1579_1;
    c_1579_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzxz11001xzx0z0zx100zxz0xzzx00zxxxzzzzxzzzxzzxxzzxxzxxzzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
