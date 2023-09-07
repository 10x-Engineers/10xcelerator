class c_569_1;
    integer i = 569;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_569_1;
    c_569_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz10x1x100x0zxx1z0000101zzxzx1zzxxxzxxzxxzxxzxzzxxzxxxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
