class c_247_1;
    integer i = 247;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_247_1;
    c_247_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00010xzxz011z11xxxz0xzz1zx00x0zxzxzzzxxzxzzxxzxzzzxxxxxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
