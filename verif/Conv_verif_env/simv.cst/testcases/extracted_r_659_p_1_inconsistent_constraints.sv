class c_659_1;
    integer i = 659;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_659_1;
    c_659_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zx0zxxzzz0010zzz1xx1x10z11111xzxzxzxxzxzzxxxzzxzzzxxzzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
