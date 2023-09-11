class c_621_1;
    integer i = -102;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_621_1;
    c_621_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z100zz0x0xzz10z000xxz0zzzz100z0zxxxzxzzxzzzxzxxxzxxzxxxzxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
