class c_580_1;
    integer i = 580;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_580_1;
    c_580_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zz0zzxx10x00x1z0x1zx1z11x00z00zxxzxxzxxxxxxxxxxzxzxxzxxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
