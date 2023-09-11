class c_4_1;
    integer i = -2;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_4_1;
    c_4_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x001x0x1zxzzxz01xzx1z1zzz0011z1xzzxxxzxzzzzxzzxzzzzzzzzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
