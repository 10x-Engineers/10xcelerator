class c_248_1;
    integer i = 248;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_248_1;
    c_248_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zzz11zz00x0z0101xx0z10100xz0xzzzzzxxzzzzxzxzzxxzxzxzxxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
