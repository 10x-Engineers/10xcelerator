class c_195_1;
    integer i = -193;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_195_1;
    c_195_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx0zzz111x1x0x1110110zx00xz1zx1zxzxzzzzzzzxxxzzxxxzzxzzzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
