class c_75_1;
    integer i = 75;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_75_1;
    c_75_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001zxz0x00zxzx0z1xxzx0x1zzz0z0xzxxxxxxxzxzzzxzxzzzxzzxzxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
