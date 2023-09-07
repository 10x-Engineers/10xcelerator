class c_438_1;
    integer i = 438;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_438_1;
    c_438_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzzzx00x0zxzxx11x10zx01x01x11xxxzzxxxzzzxxzxxzxxzxxzzzxxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
