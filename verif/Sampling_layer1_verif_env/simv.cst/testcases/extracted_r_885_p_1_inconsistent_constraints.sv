class c_885_1;
    integer i = -146;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_885_1;
    c_885_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz11001x10x001xz1101z1x0x1xx11zxxzxzzzxzzxxxzzzxxxzxxxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
