class c_1849_1;
    integer i = -307;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1849_1;
    c_1849_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzxxzz11x01xx0xz100x0000xz10xxxzzzxxzxzzxxxxzxxzzzxzzxzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
