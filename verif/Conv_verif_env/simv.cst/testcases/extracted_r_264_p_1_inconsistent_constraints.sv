class c_264_1;
    integer i = 264;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_264_1;
    c_264_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxx1000z10z011011z0x1100010z01zzzzzxxzzxxzxzxzxxxxzzxxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram