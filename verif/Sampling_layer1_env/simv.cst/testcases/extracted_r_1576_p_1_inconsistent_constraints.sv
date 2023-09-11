class c_1576_1;
    integer i = -261;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1576_1;
    c_1576_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11z110x0xx1zxxx000101xzz11zz0x0zzxxxxxxzzzxxxzzxxxxxxzzzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
