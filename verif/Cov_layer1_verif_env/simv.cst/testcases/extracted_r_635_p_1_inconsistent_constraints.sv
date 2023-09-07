class c_635_1;
    integer i = -633;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_635_1;
    c_635_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xx110xz0xxxx010z011x011x0x000zxxxxzxzzzzxxzxzzzzzxzzxzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
