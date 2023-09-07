class c_93_1;
    integer i = 93;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_93_1;
    c_93_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzxzxz00zxxz10zx0z1z01zxx1z0zz1xzzxzzzzxxzzxzxzzxxxxxzzzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
