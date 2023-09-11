class c_526_1;
    integer i = -524;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_526_1;
    c_526_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000zx0z0z00x0x01zx10xxxx100z0z0xzzxxzxzxxxzzxxzzxzxxxzxzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
