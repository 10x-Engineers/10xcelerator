class c_356_1;
    integer i = -58;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_356_1;
    c_356_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0z1zx0xzxxzzx10zx100x00zx110x1xzxxxzzzxzzzzxzzxxzxzzzxxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
