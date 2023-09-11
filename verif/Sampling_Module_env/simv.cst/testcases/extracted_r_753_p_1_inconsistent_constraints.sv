class c_753_1;
    integer i = 753;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_753_1;
    c_753_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzzzx1xz0xzz0000001z0zz0000zx0zxxxxzzxzxzzxxzzxxzzzzzxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
