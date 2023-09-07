class c_2373_1;
    integer i = -394;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2373_1;
    c_2373_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x1zz101xzz0x101x00xx10xxxxzzz1xzxxzzxxzzxzzzzzxzxzzzzxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
