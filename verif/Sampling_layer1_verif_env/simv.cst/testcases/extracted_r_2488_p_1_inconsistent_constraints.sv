class c_2488_1;
    integer i = -413;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2488_1;
    c_2488_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x1z01zxx010x0z1xxxxz0110x01x10zzzxxxxzzxxxxzzzzxxzxzzzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
