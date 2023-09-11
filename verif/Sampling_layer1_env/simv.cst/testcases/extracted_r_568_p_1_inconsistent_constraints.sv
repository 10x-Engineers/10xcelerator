class c_568_1;
    integer i = -93;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_568_1;
    c_568_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzzx00xzxxzzzzzz0xz0z1x00111xx1zzxxxxxzxxxzzxxxxxxxzzxxzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
