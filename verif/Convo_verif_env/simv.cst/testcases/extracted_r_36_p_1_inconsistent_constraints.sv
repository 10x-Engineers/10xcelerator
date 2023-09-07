class c_36_1;
    integer i = 36;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_36_1;
    c_36_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zzxzxx0x10z1zx0z111xzxz1100z0xxxxzzzzxzzxzzxzzzxxzxzxzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
