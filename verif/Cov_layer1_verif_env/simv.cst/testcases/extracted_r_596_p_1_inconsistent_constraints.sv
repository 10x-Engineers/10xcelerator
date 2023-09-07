class c_596_1;
    integer i = -594;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_596_1;
    c_596_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x10x100zxz0z0x1011z0001x00zzx1xxxxxzzxzzzxzzxzxxzxxzzxxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
