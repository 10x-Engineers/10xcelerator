class c_404_1;
    integer i = -402;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_404_1;
    c_404_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx10x0zz1zxz01x00011x1x11z0zz11zxxxxxxzzxzzzxzzxxxxzxzzxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
