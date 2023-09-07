class c_511_1;
    integer i = -509;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_511_1;
    c_511_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0101zz1zxx100zx0zx1zz0x00110x0zzxxxxxzxzxxxzxzzxxzzzzzzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
