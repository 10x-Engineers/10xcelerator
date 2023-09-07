class c_596_1;
    integer i = 596;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_596_1;
    c_596_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzxxx1101z1000zx1xz0101z1x1x11zzzxxxzzxxzxzzzzzxzzxzxxzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
