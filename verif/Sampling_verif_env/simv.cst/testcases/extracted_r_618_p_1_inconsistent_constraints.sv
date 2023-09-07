class c_618_1;
    integer i = 618;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_618_1;
    c_618_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000zzx10zzxzz00xzx1101100zxxzxxzxzzxzxxxxzzxzzxzxxzzzxzzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
