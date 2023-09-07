class c_2191_1;
    integer i = -364;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2191_1;
    c_2191_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0z0zzx1x1xz1001x1x1x1xx0z111xzxxxxxzzzxzxzzxxxxxzxzxzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
