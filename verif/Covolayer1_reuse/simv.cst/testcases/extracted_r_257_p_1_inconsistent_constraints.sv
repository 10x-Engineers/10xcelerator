class c_257_1;
    integer i = -255;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_257_1;
    c_257_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z10x0111xzzxxz0xxzzzzx0x1xz1xxxzxxzxxzzxxzxzxxzxzxxzxxzzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
