class c_420_1;
    integer i = 420;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_420_1;
    c_420_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxzx0010011zz10z0zz1010xx0100zzxzxzzxzxzzzxxzzzxzxzzxxzzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
