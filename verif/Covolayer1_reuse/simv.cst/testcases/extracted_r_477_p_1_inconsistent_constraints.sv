class c_477_1;
    integer i = -475;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_477_1;
    c_477_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx0zz1z0xxxx0zx0x0z10zzxz110zzzzzxxzxxzzzxzxzzxxxzxzxxxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
