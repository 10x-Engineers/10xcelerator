class c_967_1;
    integer i = -160;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_967_1;
    c_967_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x0z1z1zx111zxzxz10xx01x0zzx1xzzxzxzzxzzxxxxxxxxzxxxxxzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
