class c_47_1;
    integer i = 47;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_47_1;
    c_47_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10x11z0zz00xx1x0001z11zx001xxxzxzzxxzxzxzzxxzxxzzzzzxxxzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
