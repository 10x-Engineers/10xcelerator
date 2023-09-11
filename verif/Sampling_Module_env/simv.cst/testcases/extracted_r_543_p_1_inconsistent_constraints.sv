class c_543_1;
    integer i = 543;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_543_1;
    c_543_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx01x1xxxx0xxzz10zx0xz001z010xxzxzxxxzzzzxzzzzxzzxxzzzxzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
