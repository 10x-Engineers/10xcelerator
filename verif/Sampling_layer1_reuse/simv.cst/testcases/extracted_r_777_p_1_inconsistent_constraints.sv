class c_777_1;
    integer i = -128;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_777_1;
    c_777_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxz1z1x1x1zz0z1xxzx0xxz1z1xxz01xzxzxxxzzzxzxzzxzxzxxxxzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
