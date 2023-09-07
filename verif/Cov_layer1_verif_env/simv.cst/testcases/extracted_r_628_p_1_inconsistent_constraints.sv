class c_628_1;
    integer i = -626;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_628_1;
    c_628_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001xxz10010xzzx1x1zz00zzz0z1z0z1zxzxzxxzzzzxxzzxzxzzxxzzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
