class c_45_1;
    integer i = 45;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_45_1;
    c_45_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11z1x11z11zx0zzx1zzx0z0x1xzz0x0zxxzxxzzxxxzxxxzzzxzxzzzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
