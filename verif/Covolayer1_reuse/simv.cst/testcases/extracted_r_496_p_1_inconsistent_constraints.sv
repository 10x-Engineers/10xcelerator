class c_496_1;
    integer i = -494;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_496_1;
    c_496_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1100x0xz00xx00x0x1zzzzxz1101z1x0zzxxxzzxxzxxxzxxxxxzxzzzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
