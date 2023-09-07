class c_687_1;
    integer i = 687;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_687_1;
    c_687_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xzx1z10x1xz11xxx101001xzx1xzz1zxxzzzxzzzzzxzxzzxxxzxxzxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
