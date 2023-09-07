class c_191_1;
    integer i = 191;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_191_1;
    c_191_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zx1zxxxzxzz1zz0xzxzx0x0101z0xxzxxxxzzzzxzxzzxxxxxzxzxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
