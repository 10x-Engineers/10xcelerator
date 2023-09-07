class c_616_1;
    integer i = -614;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_616_1;
    c_616_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0111xzx00zx1z11x1x10z001zz01zxxxxzzxxxzxzxxxzxxzzxxxxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
