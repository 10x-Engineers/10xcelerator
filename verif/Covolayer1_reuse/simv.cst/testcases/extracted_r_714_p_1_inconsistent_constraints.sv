class c_714_1;
    integer i = -712;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_714_1;
    c_714_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz0x0xx0zz1z1z1z0xz011z0x0zxx0zzxxxzxzzzzxxzxxxxzzxxzzzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
