class c_157_1;
    integer i = 157;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_157_1;
    c_157_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz0z0x1z10x00x1z0xx100xzxz1z11zxzxzxxzzzxxzxzzxxzxxxxxzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
