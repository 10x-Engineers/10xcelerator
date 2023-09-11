class c_236_1;
    integer i = -234;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_236_1;
    c_236_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xz1zxx1x0zzxx100z110x01xzz111xxxxxzxxzxxxxzzxzxzxxxxzzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
