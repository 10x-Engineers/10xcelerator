class c_421_1;
    integer i = 421;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_421_1;
    c_421_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10010z1xzz01x1z11z1x1x001xz00001xxxzxxxxzzxzzxxxxzxxxxxxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
