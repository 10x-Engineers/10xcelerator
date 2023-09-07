class c_560_1;
    integer i = 560;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_560_1;
    c_560_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx00xzxz0xz10x0xz1zx0z000xxx10xzxzxzxxzzzzzxzxzzxxxxzzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
