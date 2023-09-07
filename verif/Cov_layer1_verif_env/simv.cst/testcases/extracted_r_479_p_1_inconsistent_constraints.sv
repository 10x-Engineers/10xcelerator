class c_479_1;
    integer i = -477;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_479_1;
    c_479_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1z0x0zx1x000x11x110z01zzx11xzxzxzzzxzxzzxzzxxxxxxzzxzxxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
