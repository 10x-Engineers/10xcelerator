class c_1546_1;
    integer i = -256;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1546_1;
    c_1546_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xx1x1xxzzxz10001z11zxz0x11zzz1zzzxzzzzzzzxxxxxxzzxxxxxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
