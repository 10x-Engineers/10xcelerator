class c_240_1;
    integer i = 240;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_240_1;
    c_240_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz010zzz1zz1xx000xzx10001xxzz1xxzzzzzxzxzxzzzxxzzzxxxzzzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
