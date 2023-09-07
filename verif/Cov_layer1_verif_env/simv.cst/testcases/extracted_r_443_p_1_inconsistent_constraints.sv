class c_443_1;
    integer i = -441;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_443_1;
    c_443_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xzxz0x0zxx10x011x011z10010z0xzzzxzzzzzzzxzxxzzzzzzxzxzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
