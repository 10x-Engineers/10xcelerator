class c_743_1;
    integer i = 743;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_743_1;
    c_743_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz110xx0z10x1z0x11x1zzx0z0zxx000zxzzzxzzzxxxzxzxzxzxzzzzzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
