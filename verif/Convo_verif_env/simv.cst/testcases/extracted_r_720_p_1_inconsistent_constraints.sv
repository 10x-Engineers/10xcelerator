class c_720_1;
    integer i = 720;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_720_1;
    c_720_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx1zzzzx10x10zz0x00zzxz0xxx11zzxxzzzzzzzxzxxzxxzxzxzzzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
