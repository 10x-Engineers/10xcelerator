class c_222_1;
    integer i = 222;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_222_1;
    c_222_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11x00zz1z101xx11100zxzz0zx01z1zzzxzxzzxxxxzzxxxxzzzzxxzzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
