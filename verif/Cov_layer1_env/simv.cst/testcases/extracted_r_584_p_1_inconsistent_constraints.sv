class c_584_1;
    integer i = -582;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_584_1;
    c_584_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x0zzx11zzxz1z0zzz111xz0zxxz1zxzxxxzzxzxzzzxzzxzxxzxzzzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
