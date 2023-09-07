class c_136_1;
    integer i = -134;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_136_1;
    c_136_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1xzz00000100zx1zzx101001zxxz0xzxzxzxxzxxxxxxzxxzxxxzxzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
