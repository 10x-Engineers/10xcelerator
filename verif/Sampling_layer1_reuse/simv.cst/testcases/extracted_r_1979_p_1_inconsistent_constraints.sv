class c_1979_1;
    integer i = -328;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1979_1;
    c_1979_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x01zxz10zx00x1z100xxx1x1zz1z1zzzzzzzzzzxxzzxzzxxxzxzzxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
