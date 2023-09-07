class c_739_1;
    integer i = -737;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_739_1;
    c_739_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx0zzx011x1z10zz1xx00x01x0x10zxzzzxxzzxzzxzxxzzxzxzzzzzzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
