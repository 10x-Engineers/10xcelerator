class c_3078_1;
    integer i = -511;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3078_1;
    c_3078_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xx01xxxz10z0001xxzz1xx01zx110zxzxzxxzzzzzzxzxzzzzzxzzxxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
