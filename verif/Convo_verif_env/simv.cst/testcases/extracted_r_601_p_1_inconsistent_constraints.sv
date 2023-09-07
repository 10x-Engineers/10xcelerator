class c_601_1;
    integer i = 601;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_601_1;
    c_601_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x10z1xxx0z011xxxx011x0z00xz0zxxxzxzxxzxxzzxxzxxxzxzzxxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
