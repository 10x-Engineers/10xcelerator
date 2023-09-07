class c_138_1;
    integer i = 138;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_138_1;
    c_138_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xx1xz0xz00zz1zz0110xx01z0zx0xzzxxxxxxzzxxxxzzxzzzzxzxzzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
