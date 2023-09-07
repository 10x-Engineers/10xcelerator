class c_377_1;
    integer i = -375;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_377_1;
    c_377_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x011x0xz01zxzz111000zz0z0z0x100xzzxxxzzzxzzzzzzxxxxxxzzzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
