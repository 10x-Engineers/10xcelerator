class c_2688_1;
    integer i = -446;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2688_1;
    c_2688_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzxx011z0z0z0zz100x11z1x11101xxxzzzzzxxzzxxxxzzxzxzzxzxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
