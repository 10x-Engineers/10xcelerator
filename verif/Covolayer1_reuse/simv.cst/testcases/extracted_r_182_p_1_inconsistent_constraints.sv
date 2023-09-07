class c_182_1;
    integer i = -180;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_182_1;
    c_182_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101zx01x0z1zz111x011010xx10z0z1zxzzxxxxzzzzzxzzzxzxxzzzxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
