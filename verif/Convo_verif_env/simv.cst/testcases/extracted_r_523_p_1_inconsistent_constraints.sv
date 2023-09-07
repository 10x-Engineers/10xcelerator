class c_523_1;
    integer i = 523;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_523_1;
    c_523_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x10zxz1xzxzxx00xx0xzz0z0z0z0xxzxzxzzzzzzxzxxxxxxzxzzxxzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
