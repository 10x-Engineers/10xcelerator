class c_330_1;
    integer i = -328;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_330_1;
    c_330_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x010z01z1zxxxx1zz1x1xx11xz11xxzxzzzzzxzxxzxxzxxxzzzzxxxzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
