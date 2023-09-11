class c_80_1;
    integer i = -78;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_80_1;
    c_80_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101zxzz1z1z0z1010z1xxx1zzz1xxxzxzxzxxxxzzxxzxzzzzzzxzzxxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
