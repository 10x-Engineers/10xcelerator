class c_509_1;
    integer i = 509;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_509_1;
    c_509_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1z1xxx0x10xz0zx0x010z0zz0z01x0zxzxxzzxzzxzzzzxzzxzzxxzzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
