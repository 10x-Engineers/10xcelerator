class c_478_1;
    integer i = -476;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_478_1;
    c_478_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z01xz00zzx11x0xzz1101z1xz1011zzxxzzxxzzxzxzxxxzzxxzxzxxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
