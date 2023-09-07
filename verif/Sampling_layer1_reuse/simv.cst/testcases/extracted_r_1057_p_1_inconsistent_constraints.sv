class c_1057_1;
    integer i = -175;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1057_1;
    c_1057_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzz1010xz00xz0zxz00zx11110zzx00xxxxzzxzzzzxzxxxxxzxxxzzxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram