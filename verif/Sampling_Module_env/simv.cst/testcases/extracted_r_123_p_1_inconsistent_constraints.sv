class c_123_1;
    integer i = 123;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_123_1;
    c_123_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxx1xzxzxzzx00zx0x1xxxx1zzzzx11xxzzxzxxxxzxxxzxzxxzzzxzxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
