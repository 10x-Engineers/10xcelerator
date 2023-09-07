class c_2190_1;
    integer i = -363;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2190_1;
    c_2190_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0x01101zx00zxz10z1xx000x1x11xxxxxxzzzzxzzxzzzzzxzxxxxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
