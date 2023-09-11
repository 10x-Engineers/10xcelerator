class c_742_1;
    integer i = -740;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_742_1;
    c_742_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zxx01z1xz1xxxxxxzz1z1001xzxxz0zxxzzxxxzxzzzxxxxzzxxxzxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
