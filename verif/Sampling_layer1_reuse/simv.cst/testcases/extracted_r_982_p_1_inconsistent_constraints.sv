class c_982_1;
    integer i = -162;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_982_1;
    c_982_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00100000zxzxzx0xx1z1z1x1z0x0z1x0xxzxxxxzxxxxzzxxxxxxzzxxxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
