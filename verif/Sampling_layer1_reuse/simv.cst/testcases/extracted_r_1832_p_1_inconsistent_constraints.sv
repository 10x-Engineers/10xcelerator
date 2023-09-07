class c_1832_1;
    integer i = -304;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1832_1;
    c_1832_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1z1z0000110xx01zxz10zz1x1011xzxxxxxxxzzzzzzxzzxxxzzzxxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
