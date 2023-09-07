class c_78_1;
    integer i = -76;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_78_1;
    c_78_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1z1z1xz11xz1xx10xx0z10x0z0z010xxzxxxxxzxxzxzzxxzxzxzzzzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
