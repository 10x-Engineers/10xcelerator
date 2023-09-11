class c_1478_1;
    integer i = -245;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1478_1;
    c_1478_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zx10z0xxzxx0xxx00zx00x111x001xxxxzxzxzzxzzzzxzzxzzxxxzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
