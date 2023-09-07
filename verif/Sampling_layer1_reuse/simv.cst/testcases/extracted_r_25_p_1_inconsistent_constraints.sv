class c_25_1;
    integer i = -3;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_25_1;
    c_25_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0xz1zzz0z110zxx11x0000xzzzxx0zxzzzzzzxxxzzxzzzxxzxzxzxzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
