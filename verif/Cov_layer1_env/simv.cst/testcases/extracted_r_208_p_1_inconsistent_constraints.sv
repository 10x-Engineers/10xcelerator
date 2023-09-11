class c_208_1;
    integer i = -206;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_208_1;
    c_208_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0010x1zxx0z00x1zx1z0xz1z1zxx0xxxxzxzzzzzxzxzxxzzzxzxxzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
