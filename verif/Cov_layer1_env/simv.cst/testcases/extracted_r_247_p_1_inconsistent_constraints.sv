class c_247_1;
    integer i = -245;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_247_1;
    c_247_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz100zz00zxx0z1z0z10x1z1xx1z11zzxxzzxxzzxxzxzxxxzxzxzzzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
