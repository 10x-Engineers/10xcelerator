class c_697_1;
    integer i = -695;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_697_1;
    c_697_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1x101x000xz00xzz1z0x010z0x0zzxzzxzxxzzxzxxxzxxxzzxzzzzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
