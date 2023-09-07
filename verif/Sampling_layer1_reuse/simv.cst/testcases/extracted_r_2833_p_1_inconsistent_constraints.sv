class c_2833_1;
    integer i = -471;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2833_1;
    c_2833_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001xz1z1zxxx11xzxzx1x1xz1x1zxxxzzzxzxzzxxzzzzzzxzxzzzxzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
