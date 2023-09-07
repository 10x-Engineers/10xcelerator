class c_627_1;
    integer i = -103;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_627_1;
    c_627_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1z1z0111xx1zxxzz1zz10z0xxzz110xzxzzzxzzzxxxzxxzzxzxzzxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
