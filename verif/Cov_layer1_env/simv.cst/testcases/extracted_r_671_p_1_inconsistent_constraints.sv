class c_671_1;
    integer i = -669;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_671_1;
    c_671_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx0000xxz11xz1zz1xzzzzxzz00z01zxzzzzzxxzxzzzzxxxzzzxzzzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
