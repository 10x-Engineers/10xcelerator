class c_1212_1;
    integer i = -200;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1212_1;
    c_1212_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1x110xzx11x1z11x10zzz00x0zx01zzxzxxzxzzzzzxzxxzzxzxzzzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
