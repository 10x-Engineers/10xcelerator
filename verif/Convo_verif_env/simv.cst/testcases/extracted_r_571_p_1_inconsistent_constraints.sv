class c_571_1;
    integer i = 571;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_571_1;
    c_571_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxzzx010x1xxzz10xx1x1z11xxzxz1zzzzxxxzxxzzxzxxxxxxzzxzxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
