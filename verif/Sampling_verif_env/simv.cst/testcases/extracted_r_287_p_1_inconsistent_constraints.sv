class c_287_1;
    integer i = 287;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_287_1;
    c_287_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzz1z10x0zx01zz0z1xxz1xx1011zxzzzxzzxxzzzxxzxxxzzxxzzxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
