class c_77_1;
    integer i = -75;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_77_1;
    c_77_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxxzz1z011zz0xxzx0xx1x01xz0x01zxxzzzxxxzxxxzzxxzxxzzzzxxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
