class c_2561_1;
    integer i = -425;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2561_1;
    c_2561_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx0xx0xz10zx00x1z01zzzx1z1zx11xxxxzzxzzxxzxxxxxxzzzzxzzxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
