class c_103_1;
    integer i = -16;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_103_1;
    c_103_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z0z1x0x01zxx0xx0z1z0xz01x10z1xxzzxxzzxxzzzzzzzxzzxxzxxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
