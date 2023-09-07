class c_527_1;
    integer i = -525;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_527_1;
    c_527_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zzz1xz010x0zzxxxxxzzzx0xx1xxx1xxzzxzxxzxxzxzxxxzzzxxxzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
