class c_834_1;
    integer i = -137;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_834_1;
    c_834_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz011x11x0000z1z1011x010z0x10xxxxxxxzxzzzxxxxxxxxzzzxzzxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
