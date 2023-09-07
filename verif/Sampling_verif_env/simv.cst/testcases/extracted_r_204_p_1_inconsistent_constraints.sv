class c_204_1;
    integer i = 204;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_204_1;
    c_204_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01zxx1zx01xxx0x11x0z0x0001xz1z0zxxzxzxxzzxzzzzzxzzzzzxxzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
