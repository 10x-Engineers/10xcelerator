class c_3292_1;
    integer i = -547;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3292_1;
    c_3292_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0010x0000000x1x1zzxx0xx010xz0x1xxzzxxxxxxxzzzzzzzzzxxzxzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
