class c_78_1;
    integer i = 78;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_78_1;
    c_78_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzx1x1zzz10zx1zz0101x110z10zx01zzxzzxxxxzzxxzzzzzzzzxxzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
