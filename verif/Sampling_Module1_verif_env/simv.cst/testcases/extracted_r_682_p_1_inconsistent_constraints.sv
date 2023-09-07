class c_682_1;
    integer i = 682;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_682_1;
    c_682_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01xx0x1zx0z011xzzzzz0zxx0zxx0zzxxzzxzzxxxxxxzzxzxxxzzzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
