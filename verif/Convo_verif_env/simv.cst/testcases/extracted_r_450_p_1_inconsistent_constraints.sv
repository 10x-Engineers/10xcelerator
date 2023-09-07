class c_450_1;
    integer i = 450;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_450_1;
    c_450_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x010110zz0z1x1z11zzx1xxxz01x11zzxzxxzxxzxzxxzxzxzzzzzzzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
