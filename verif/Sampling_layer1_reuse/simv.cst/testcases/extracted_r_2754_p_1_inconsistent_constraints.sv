class c_2754_1;
    integer i = -457;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2754_1;
    c_2754_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x00xx0zz0zzxx01x11101xx000z0xxxzxzzzxzxzxzxzxxxzzxzzzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
