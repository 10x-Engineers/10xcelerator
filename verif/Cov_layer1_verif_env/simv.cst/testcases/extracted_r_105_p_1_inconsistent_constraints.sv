class c_105_1;
    integer i = -103;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_105_1;
    c_105_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx1011zx01zx01zxx00z01zx1010zz1xzzzxzzzxzxzzzxzzxxzxxzxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
