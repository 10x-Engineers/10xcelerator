class c_28_1;
    integer i = 28;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_28_1;
    c_28_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xz1zxzzzxzz10xz01z0zxzzxzz001zzzxxxzzzzxzzzzzxzxzxzzzxxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
