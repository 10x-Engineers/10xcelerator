class c_498_1;
    integer i = -496;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_498_1;
    c_498_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx000xx0xz1xx1zzx0z1x00z00z10xxzzxxzzzzzzxxxzxxzxzzzzxxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
