class c_108_1;
    integer i = -106;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_108_1;
    c_108_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzx0xz1z0x1x00x10xzz1xz00zxx11zzzzxxxzzxxxxzxxxzxxxzxzxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
