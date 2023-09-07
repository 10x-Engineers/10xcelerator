class c_650_1;
    integer i = -648;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_650_1;
    c_650_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00xx10x1x0101xxzxzx101xz11zx1zzzxxzxxxzxzzzxzxxzzxzzxzzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
