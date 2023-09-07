class c_2287_1;
    integer i = -380;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2287_1;
    c_2287_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x1x00z1zzxx0z1x1x0x1zx11xxzzz1xzzzzzxzzxxxzzxxzzxxzzxxzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
