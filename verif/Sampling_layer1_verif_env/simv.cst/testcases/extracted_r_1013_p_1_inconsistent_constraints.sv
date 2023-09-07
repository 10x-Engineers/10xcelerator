class c_1013_1;
    integer i = -167;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1013_1;
    c_1013_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz100x11x1x00x0zz1xzxxzx1zzxx001zxxzxzzxxzzzxxzzxxzxxxxxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
