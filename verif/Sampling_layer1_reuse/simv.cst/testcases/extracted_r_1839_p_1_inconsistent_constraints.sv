class c_1839_1;
    integer i = -305;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1839_1;
    c_1839_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xzzzxx10z1x00111x1zx100000xxx1zzxzxxzzzxxzxxxzzxxzzzzxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
