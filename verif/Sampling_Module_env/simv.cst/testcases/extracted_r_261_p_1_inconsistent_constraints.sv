class c_261_1;
    integer i = 261;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_261_1;
    c_261_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zx1111zzx10xxxx1xxz0zxx0z01x00zzxxxxxzzxzxxzxzxzzxxxzxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
