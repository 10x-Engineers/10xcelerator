class c_2628_1;
    integer i = -436;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2628_1;
    c_2628_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx00zzz1x01zzx1xz1x0zxzz011zx0xxxxxzzzxzxxxzzzxxxzxxxzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
