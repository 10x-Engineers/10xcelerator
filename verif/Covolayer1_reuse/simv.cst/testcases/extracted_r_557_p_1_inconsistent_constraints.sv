class c_557_1;
    integer i = -555;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_557_1;
    c_557_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz0z010x1z101zzzzzx101zx001zz10zzxxxzzzzzzzzxxzzzzxxzzzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
