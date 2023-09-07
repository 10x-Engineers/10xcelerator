class c_414_1;
    integer i = 414;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_414_1;
    c_414_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0x10xzz0x0000xz01111xz00x10zxxxxxxzzzxzzxxxxxxxzzzxxxzzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
