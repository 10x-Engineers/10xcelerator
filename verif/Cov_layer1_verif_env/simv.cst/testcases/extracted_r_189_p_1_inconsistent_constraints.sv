class c_189_1;
    integer i = -187;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_189_1;
    c_189_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzxzzzzzzzx0zzx0zxx1x1x1x010zx1zxxxzzzzzzxxzzxzzxxxxxzzzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
