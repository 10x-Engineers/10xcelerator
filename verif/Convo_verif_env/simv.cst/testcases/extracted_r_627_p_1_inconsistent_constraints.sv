class c_627_1;
    integer i = 627;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_627_1;
    c_627_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1000z1z10100010z111zz1z1z110z1zxzzxzxxxxxxzzzxxzxzzxzxzzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
