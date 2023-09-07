class c_601_1;
    integer i = -599;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_601_1;
    c_601_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0z1z1zx0000xxz0zxxxzxz0z00xz0xxzzxxxxzxzzxxxzxxxxzzzxxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
