class c_710_1;
    integer i = -708;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_710_1;
    c_710_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx1xxx1x1xzz1z00x00011z0z0xz10xzzzzxxxxxzxzzxzzzzxzxzxzzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
