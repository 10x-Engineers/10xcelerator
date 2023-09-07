class c_196_1;
    integer i = 196;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_196_1;
    c_196_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0011z100x11xz10zx110xz11zz11z1zxzzxxxxzzxzxzzzxzxxzxxzzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
