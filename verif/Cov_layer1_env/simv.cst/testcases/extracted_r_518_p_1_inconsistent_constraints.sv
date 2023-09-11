class c_518_1;
    integer i = -516;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_518_1;
    c_518_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1100zxx11zxzz1xz111011xxz1zz0x0zzzxxzzxxzxxxxzzxxxzzxxxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
