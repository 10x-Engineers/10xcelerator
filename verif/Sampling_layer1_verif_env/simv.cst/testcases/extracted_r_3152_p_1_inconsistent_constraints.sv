class c_3152_1;
    integer i = -524;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3152_1;
    c_3152_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x11xzz1z1x0xzz101zxz0zz1xx000x1xzzzxxxzxxzxxzzzxxxxxxzxxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
