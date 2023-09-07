class c_532_1;
    integer i = -530;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_532_1;
    c_532_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z00x0z100xxzx00zzx1xzz0z0zz1zzxzzxzzxzzzzzzzzzzxzzxxzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
