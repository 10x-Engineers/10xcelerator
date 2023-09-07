class c_38_1;
    integer i = -5;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_38_1;
    c_38_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1z00x0zzz10z1z1xzx0xxz111xzz0zzxzzzxxzxzzxzxzxxxzxxxzzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
