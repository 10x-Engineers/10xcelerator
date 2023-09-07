class c_783_1;
    integer i = -781;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_783_1;
    c_783_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z1001z1zz0zx01z10xx1xz0xx1zxx1zzzzzxxxzzzzxxxzxxzxzxxzzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
