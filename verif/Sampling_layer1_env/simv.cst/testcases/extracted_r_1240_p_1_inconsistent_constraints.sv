class c_1240_1;
    integer i = -205;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1240_1;
    c_1240_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00111x1x1zz1z1xz1011xzxxx1zz1zzxzxxxxxzxzzxzzxxzxzxzxzxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
