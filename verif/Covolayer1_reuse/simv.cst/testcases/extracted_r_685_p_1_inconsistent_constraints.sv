class c_685_1;
    integer i = -683;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_685_1;
    c_685_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z1000z11zx10z0xz1zxzxz010zx1zxxzzzxxxzxxzzzxzxxxzzzzxxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
