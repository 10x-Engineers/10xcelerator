class c_1016_1;
    integer i = -168;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1016_1;
    c_1016_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x01x1x0x11xz01zzxx1xx11x1x010zzzzxxzxzxxzzxxxzzxxzzzxzxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
