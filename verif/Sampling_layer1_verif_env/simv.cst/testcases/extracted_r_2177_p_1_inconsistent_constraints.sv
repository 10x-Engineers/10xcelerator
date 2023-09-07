class c_2177_1;
    integer i = -361;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2177_1;
    c_2177_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x10x110x11xx1z1x1xzz10010xz1zxxxzzxzzxzzxxxzxzzxxzxzzxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
