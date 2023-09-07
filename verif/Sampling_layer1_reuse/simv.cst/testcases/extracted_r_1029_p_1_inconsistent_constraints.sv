class c_1029_1;
    integer i = -170;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1029_1;
    c_1029_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11110x1xxz0z01zzx10x11zz00zz1x1xzxzzxxxzzxxxxxzzxzzzxzzxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
