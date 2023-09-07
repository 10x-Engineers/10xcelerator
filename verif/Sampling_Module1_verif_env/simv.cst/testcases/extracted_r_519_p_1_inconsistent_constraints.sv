class c_519_1;
    integer i = 519;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_519_1;
    c_519_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x0zx10z00zz00xz0z100x000zxxxz1zxxzxzzzzxxxxzzzxxxxxxzxzzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
