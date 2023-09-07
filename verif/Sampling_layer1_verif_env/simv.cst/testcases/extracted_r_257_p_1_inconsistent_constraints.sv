class c_257_1;
    integer i = -41;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_257_1;
    c_257_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00001x1z0z0xx101xz10z0z01zx101xzxzxxxzxzzzxzzxzxxzxxzzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
