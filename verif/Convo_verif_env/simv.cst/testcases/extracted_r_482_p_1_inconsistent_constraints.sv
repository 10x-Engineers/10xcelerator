class c_482_1;
    integer i = 482;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_482_1;
    c_482_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00000xxxxz1xz00zz0zx0zzx0zx10110xxzxxzxzzzxxzxxzzxzxxzxxxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
