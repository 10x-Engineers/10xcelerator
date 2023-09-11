class c_64_1;
    integer i = -62;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_64_1;
    c_64_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1001z1zx11z0xzzx0xxz11xz1001xzzxzzzxzxzzxxxxxzzxzxzzxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
