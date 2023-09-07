class c_907_1;
    integer i = -150;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_907_1;
    c_907_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xx0z0x0zz0x01x111011x001xx010xxxzzzzxxxzzxzxzzzzzxzxxzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
