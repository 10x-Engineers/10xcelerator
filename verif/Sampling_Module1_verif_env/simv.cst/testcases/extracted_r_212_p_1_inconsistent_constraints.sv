class c_212_1;
    integer i = 212;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_212_1;
    c_212_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1zz1zz11zx10z1xx11z10zz1z0z110zxxzzzzxxzzzxxxxzxxxzxzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
