class c_126_1;
    integer i = 126;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_126_1;
    c_126_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1110x001zzx0z0x0z01111z0z0x01011xzzzxxxxzxxxzxxzzxzzxxzxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
