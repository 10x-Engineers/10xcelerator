class c_759_1;
    integer i = -757;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_759_1;
    c_759_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zzzz00xxz0xzxz01x111zx010z1x01zzxxzxxxxzzxzxzxxxzxxxzxzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
