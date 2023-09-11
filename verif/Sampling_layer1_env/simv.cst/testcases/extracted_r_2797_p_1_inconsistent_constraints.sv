class c_2797_1;
    integer i = -465;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2797_1;
    c_2797_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x11z01x01xx00x111zx0111xzx1x0zzxxxxzzxzzzxxxxxxxzxxxxxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
