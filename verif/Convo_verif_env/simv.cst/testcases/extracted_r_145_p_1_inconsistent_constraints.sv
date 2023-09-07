class c_145_1;
    integer i = 145;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_145_1;
    c_145_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1xz0zzzxz1zz1zxx001x00001001x1zxxzzxzxxxxzzzzzxxxzzxzzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
