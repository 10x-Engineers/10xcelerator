class c_594_1;
    integer i = -592;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_594_1;
    c_594_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0zzz1z1010010x1z0xzzz0zzz1zz1zzzzzxxxzzzzxxxxxxzzxxxxxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
