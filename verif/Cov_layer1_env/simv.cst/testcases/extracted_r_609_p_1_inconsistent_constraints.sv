class c_609_1;
    integer i = -607;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_609_1;
    c_609_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zz1xx11zxx0x0x00zx0xz00xx1011xxxxzzzzzzzzzxxxzzzzxzzzxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
