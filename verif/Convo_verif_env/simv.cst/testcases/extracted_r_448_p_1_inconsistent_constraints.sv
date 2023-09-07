class c_448_1;
    integer i = 448;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_448_1;
    c_448_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zz01x11z00zx0010z0x1zxzz0z1z01xzxzxxzxzzxzzxzzzzzzxxzzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
