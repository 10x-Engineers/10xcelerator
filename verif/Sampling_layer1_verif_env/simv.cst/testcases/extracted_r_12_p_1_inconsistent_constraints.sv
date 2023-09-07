class c_12_1;
    integer i = 12;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_12_1;
    c_12_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0z0xz0xxx011xz0z0x1x1xx00xx011zxxzxzzxzxxzxzzzzxzzxxxxxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
