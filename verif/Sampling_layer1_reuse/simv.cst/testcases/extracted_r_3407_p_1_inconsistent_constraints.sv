class c_3407_1;
    integer i = -566;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3407_1;
    c_3407_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00z1zz1x0110000xxzxxxx1001xz1xzzzxzzxzzxzxzzxxzzxzxxxzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
