class c_345_1;
    integer i = -56;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_345_1;
    c_345_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001x10z0z0zzz0z0zz10z1zzz1z01010zzxzzzzxzxxzxzxzzxzxxxzzzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
