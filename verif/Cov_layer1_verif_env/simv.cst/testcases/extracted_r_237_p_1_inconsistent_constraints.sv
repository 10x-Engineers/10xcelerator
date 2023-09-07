class c_237_1;
    integer i = -235;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_237_1;
    c_237_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz0x11011zz1xz1zxz11zzx1z0xzx1zxxzxzzxzzzxzzzzzxxzzzxzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
