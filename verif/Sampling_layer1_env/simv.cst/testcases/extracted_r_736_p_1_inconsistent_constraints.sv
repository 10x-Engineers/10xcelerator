class c_736_1;
    integer i = -121;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_736_1;
    c_736_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0x0x0zz0x0x11z101z001xxz0zz101zxzzxxzzzzzzxzzzxxxxzxxxzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
