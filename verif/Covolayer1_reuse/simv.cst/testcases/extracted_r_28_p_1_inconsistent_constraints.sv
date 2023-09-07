class c_28_1;
    integer i = -26;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_28_1;
    c_28_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz0zxxxx0x1zxz0zz1x0x1zzz0x0zx0zxxxxxxzxzzxzzxxzxxxxxzzzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
