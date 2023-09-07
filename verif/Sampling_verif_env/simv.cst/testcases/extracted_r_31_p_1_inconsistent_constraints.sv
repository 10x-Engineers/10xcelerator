class c_31_1;
    integer i = 31;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_31_1;
    c_31_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz0z110zxzx0zxxz01zzxx1z0x000zzzxzxzzzzxxzzxzxzxxxzzxxzzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
