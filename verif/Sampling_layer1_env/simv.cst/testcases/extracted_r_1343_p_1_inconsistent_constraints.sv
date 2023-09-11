class c_1343_1;
    integer i = -222;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1343_1;
    c_1343_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00xx1xxxzzxxzxz1xz101xzxzz10z1xxxzxzzzxzxxzzxxxxzzxxxzzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
