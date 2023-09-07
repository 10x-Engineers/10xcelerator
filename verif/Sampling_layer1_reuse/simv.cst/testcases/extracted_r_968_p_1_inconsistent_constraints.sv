class c_968_1;
    integer i = -160;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_968_1;
    c_968_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x11xxzxz1zz0x0zxz0zxxz0x0z101xzzzxxzxxxzxzxzzxzzzzxxxxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
