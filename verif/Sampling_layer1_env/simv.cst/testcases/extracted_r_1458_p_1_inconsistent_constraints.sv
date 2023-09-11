class c_1458_1;
    integer i = -241;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1458_1;
    c_1458_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1x1000011zzz0100xzzzz0xzxz01xxxzzxxxxxzxzxxxzzxxxxxzxxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
