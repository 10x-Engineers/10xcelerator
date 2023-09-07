class c_506_1;
    integer i = -83;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_506_1;
    c_506_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x1xx1z1zz1z00xzzxzxxz000z0x1xzzxxxxzxzxxxxzxzxzzxzxzxzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
