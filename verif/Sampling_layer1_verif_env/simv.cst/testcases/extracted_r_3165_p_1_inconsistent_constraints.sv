class c_3165_1;
    integer i = -526;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3165_1;
    c_3165_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz0x01xz111z1xz0z01110x0xxzxz01xzzzxzzxzxzxzzzxxzzzzzzxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
