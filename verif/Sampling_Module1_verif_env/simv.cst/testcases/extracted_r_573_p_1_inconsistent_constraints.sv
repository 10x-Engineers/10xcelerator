class c_573_1;
    integer i = 573;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_573_1;
    c_573_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00xz1zz010z0zz0z10z0zzz001z1100zxzxxzzzxxzzxxxzzzxzzxzxxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
