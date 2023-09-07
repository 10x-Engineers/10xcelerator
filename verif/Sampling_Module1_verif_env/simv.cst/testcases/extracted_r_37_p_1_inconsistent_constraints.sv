class c_37_1;
    integer i = 37;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_37_1;
    c_37_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xx0xzz0x1zx1100xz1xxxxx0z1100zxzzxxzzzxzzxzzzzxzxxxxxxxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
