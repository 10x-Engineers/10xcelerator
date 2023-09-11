class c_3322_1;
    integer i = -552;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3322_1;
    c_3322_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxx010000x01111xx001x0110z10xzxxzzzxzxzzxzzxxzxzxzzxzzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
