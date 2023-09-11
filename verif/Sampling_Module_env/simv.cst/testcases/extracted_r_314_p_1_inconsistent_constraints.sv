class c_314_1;
    integer i = 314;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_314_1;
    c_314_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z10z1x1100111xzx00zzx0z10x0x11zxzxzxzxxzxzzzxzzzzzzxxzxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
