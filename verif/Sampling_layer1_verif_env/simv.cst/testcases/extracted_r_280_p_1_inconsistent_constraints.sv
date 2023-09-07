class c_280_1;
    integer i = -45;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_280_1;
    c_280_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz101z0x1x0x0xx1xzz0zxzxx1z0xzzzxxxzxxxzzzxzzzxxzzzzzzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
