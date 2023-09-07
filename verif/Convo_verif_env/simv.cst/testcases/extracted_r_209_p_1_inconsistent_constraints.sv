class c_209_1;
    integer i = 209;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_209_1;
    c_209_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z1z01011zzxx0zz1zxx001z100000zzxzxxzxxzzxzxxzxxxzzzxxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
