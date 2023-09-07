class c_200_1;
    integer i = -198;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_200_1;
    c_200_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxz1x11xxx100x0x1z1xz00x00zzz10zzxzzxxzzzzzxzzxzxxzxxxzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
