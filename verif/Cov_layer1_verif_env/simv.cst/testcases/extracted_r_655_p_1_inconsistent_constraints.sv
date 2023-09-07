class c_655_1;
    integer i = -653;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_655_1;
    c_655_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1010z10z1x110z1x0x0z1xxzz01zxxxzxzzzxzzzxxxzxxzxxzzzzzzzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
