class c_253_1;
    integer i = 253;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_253_1;
    c_253_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz101x1111001zz010xzxzz000xz11x1zxxzzzxxzzzzzxxzxxzzzxxzzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
