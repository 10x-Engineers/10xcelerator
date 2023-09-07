class c_2840_1;
    integer i = -472;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2840_1;
    c_2840_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001xxxx0xzz1z01zz000xxzxzzxz0x1xzxzxzxzzzzxxzxzxxxzzxxxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
