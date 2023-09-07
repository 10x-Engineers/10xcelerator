class c_739_1;
    integer i = 739;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_739_1;
    c_739_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001zxx10z00z10x111z11xzx1z1xzxzxzzzzxzxzzxzzzzxxzxxxzzxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
