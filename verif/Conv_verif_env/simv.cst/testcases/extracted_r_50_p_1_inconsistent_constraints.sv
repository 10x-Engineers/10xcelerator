class c_50_1;
    integer i = 50;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_50_1;
    c_50_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1zxx10z1xz001xzxz1zz1010z1zz0zxxzxzxxzxxzxzzzzxzxxzxxzxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
