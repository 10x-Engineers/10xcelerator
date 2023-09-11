class c_1820_1;
    integer i = -302;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1820_1;
    c_1820_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z000xx11x10100z1z00xzz0101zx1011xzzxzzzzzxxxzzzzzzzxzzxxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
