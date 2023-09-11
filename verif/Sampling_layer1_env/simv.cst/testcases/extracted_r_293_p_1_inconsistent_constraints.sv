class c_293_1;
    integer i = -47;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_293_1;
    c_293_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0110x0zx0z01xxz1xx1x01xz010xxxzzzxxzxxzxzzzxzzzxxzxxzzzzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
