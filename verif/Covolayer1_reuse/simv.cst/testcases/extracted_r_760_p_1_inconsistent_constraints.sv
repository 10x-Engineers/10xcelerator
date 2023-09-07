class c_760_1;
    integer i = -758;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_760_1;
    c_760_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zz101zz0xz1x011x0x01zzx01x111xzxxzxzxxxzxxxzxxzzxxzzxxxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
