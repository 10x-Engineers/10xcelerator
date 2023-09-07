class c_3259_1;
    integer i = -542;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3259_1;
    c_3259_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0z1xxx111z10z0101x0xx0101111x1xzxzxzzxxzxxxxxxzzxzzxxzzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
