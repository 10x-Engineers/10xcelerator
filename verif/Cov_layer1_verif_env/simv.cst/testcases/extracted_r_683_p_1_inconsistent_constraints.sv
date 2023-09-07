class c_683_1;
    integer i = -681;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_683_1;
    c_683_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x0011zxzxz0zzx0110xx000010z1xxxxxxxzxzzxzzzxxzxxxxxzxxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
