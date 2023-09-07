class c_282_1;
    integer i = -280;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_282_1;
    c_282_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z10zxx00zx10xzzxxxz010z1z11x10xzzxxxxxzxzzzxzxxzzxxzzzxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
