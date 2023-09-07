class c_683_1;
    integer i = 683;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_683_1;
    c_683_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx01000x0111xzx0xz0zzxz0z1x10zxzxzzzzzzzxxzzzzxzzxxzxzxzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
