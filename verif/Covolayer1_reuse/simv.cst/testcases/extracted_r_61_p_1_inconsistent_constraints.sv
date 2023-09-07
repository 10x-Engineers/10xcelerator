class c_61_1;
    integer i = -59;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_61_1;
    c_61_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xx01xz0x0xzz10z0001zxx1110xzxxxzxzxxxzzxxxzzzzxxzxxxxxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
