class c_224_1;
    integer i = -222;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_224_1;
    c_224_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1zx1z1x0110z1z0z1xz1zzz0x01zxxzzxzxzxzxxzzxxzxzzxzzxxxzzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
