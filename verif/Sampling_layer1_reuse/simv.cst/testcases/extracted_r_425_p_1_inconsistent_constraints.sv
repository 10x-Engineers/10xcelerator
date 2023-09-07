class c_425_1;
    integer i = -69;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_425_1;
    c_425_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100z0x10xxx1x0110x10x01x0xz1001xxxxzxxzxzxzxxxzzxzzxzzxzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
