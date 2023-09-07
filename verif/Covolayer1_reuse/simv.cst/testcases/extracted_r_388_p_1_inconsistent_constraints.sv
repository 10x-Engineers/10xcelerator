class c_388_1;
    integer i = -386;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_388_1;
    c_388_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx01z101111xx0x11x11z100x1010xxzxxzzxzzxxxzzxzxxxxzxzxzzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
