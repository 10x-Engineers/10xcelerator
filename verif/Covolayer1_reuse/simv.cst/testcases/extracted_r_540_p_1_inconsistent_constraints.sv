class c_540_1;
    integer i = -538;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_540_1;
    c_540_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz01z01011xzzx0z0001xz1zx1x1xx1xzxzzxxxzxxzzzzzxzxxxzzzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
