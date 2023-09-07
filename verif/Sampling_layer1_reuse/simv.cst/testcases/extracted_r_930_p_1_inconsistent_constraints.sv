class c_930_1;
    integer i = -153;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_930_1;
    c_930_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x111zxxz01xxxzzz0z0z1z1z0x1x000xxzzzxxzzxzxxxzxzxxxzzxzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
