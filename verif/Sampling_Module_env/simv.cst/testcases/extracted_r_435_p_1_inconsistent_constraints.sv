class c_435_1;
    integer i = 435;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_435_1;
    c_435_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx1xxx01z0zx10zx1x0zzz1x101zx0zzzzzxzzxzxzxxzzxzxxxzxzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
