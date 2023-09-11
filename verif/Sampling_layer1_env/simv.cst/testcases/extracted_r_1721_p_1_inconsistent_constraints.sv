class c_1721_1;
    integer i = -285;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1721_1;
    c_1721_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1x00x0zx011xxxx00z1zx00x0x01zxzxzxzzxzxxzzxxzzxxxzxzzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
