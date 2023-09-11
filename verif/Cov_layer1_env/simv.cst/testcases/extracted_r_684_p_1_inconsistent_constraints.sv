class c_684_1;
    integer i = -682;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_684_1;
    c_684_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x010zzxz1x0xxzzxx1xx00xzzzxzx1x1zxxzzzzzzxxxxzxxxxzzxxzzxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
