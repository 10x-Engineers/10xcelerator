class c_906_1;
    integer i = -149;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_906_1;
    c_906_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z111zzz0110x10101z0z100zz0z00x1xzxzzxzzxzxzxxzzzxzzzxxzzzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
