class c_340_1;
    integer i = 340;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_340_1;
    c_340_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1111zx1zzzx0z1x00xxz01101z10xzxxxxzzxzxxxzzzxxxzzzzzzxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
