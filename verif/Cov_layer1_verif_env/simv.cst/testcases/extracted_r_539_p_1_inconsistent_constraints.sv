class c_539_1;
    integer i = -537;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_539_1;
    c_539_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x111zxx01zz1z0zz1z100z00zx01zxzxzzzxzzzzxzxzzxzzxzzxzzzzxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
