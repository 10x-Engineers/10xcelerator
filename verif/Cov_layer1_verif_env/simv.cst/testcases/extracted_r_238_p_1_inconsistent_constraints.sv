class c_238_1;
    integer i = -236;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_238_1;
    c_238_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xxz11xz10x101010zz0x0x0xz0xxx0zzxzzzzxzxxxzzxxxzxxzzzxxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
