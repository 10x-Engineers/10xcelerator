class c_702_1;
    integer i = 702;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_702_1;
    c_702_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx01x111101zxx0xz00zx01xzz001xzxzzzzxzzxxxxxxzzxzzxzzxxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
