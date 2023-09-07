class c_669_1;
    integer i = -667;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_669_1;
    c_669_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111zz1zxz0zxxxx1z01z000x1x110000xxzxzzxxzzzzzxxzzzxxzzxxxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
