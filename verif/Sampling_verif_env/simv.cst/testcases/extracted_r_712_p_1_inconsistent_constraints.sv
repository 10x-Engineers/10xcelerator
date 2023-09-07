class c_712_1;
    integer i = 712;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_712_1;
    c_712_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1x10zx10z001xzx1z1x1xxxz01zx0xxxzzxxzxzxxxxzxxzxzzxzzxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
