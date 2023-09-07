class c_697_1;
    integer i = 697;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_697_1;
    c_697_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011x000zx1zx1zxx1zzzx10z0xzxxxzxzzxxxxzxzzzxzzzxxzxzzzzzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
