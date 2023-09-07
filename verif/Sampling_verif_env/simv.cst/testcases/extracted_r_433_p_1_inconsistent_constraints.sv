class c_433_1;
    integer i = 433;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_433_1;
    c_433_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x111zzxzz0z1xxzzx110z0z100x11z0zzzxxxzzxzxzxxxzxzxzxzzzxzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
