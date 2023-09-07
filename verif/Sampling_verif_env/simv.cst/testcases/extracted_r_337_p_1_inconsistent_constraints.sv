class c_337_1;
    integer i = 337;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_337_1;
    c_337_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z00x00z011zx100101zx110xx0110xxzzxxzzzxxzzzzzxxzxxxzzxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
