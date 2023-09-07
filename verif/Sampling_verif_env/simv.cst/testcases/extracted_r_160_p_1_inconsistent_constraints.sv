class c_160_1;
    integer i = 160;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_160_1;
    c_160_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz11zzxz0zx11x0z0x00xzxx11xx11z0xzxzxxxxxxzxzxzxxxzzxxxzzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
