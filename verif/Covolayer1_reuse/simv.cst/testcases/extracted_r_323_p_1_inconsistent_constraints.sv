class c_323_1;
    integer i = -321;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_323_1;
    c_323_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1xzz1zxxxx0x0z10xxz10zz01x0zzxxxzzxxzxxxxxxxxxxzzxxzzzzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
