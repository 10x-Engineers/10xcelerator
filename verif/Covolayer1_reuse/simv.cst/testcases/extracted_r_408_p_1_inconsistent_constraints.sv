class c_408_1;
    integer i = -406;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_408_1;
    c_408_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x010x1zxzzz0xz00101z1x0001z0zzxxzzzzxzxxxzzxxxxzxzzzxxzxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
