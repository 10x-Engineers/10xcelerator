class c_101_1;
    integer i = -99;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_101_1;
    c_101_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx00xxz100xx0x0zzxz0z0x0xzxzz000zxzxxxzxxxxxzzxxxxxxzzxzzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
