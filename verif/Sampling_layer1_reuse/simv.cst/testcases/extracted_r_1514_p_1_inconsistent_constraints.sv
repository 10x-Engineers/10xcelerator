class c_1514_1;
    integer i = -251;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1514_1;
    c_1514_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zz1xzx11z1x11xxx1zxz10zx0x111xzxzxxzxxzzxzxzzxxzzxxzzxzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
