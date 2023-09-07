class c_169_1;
    integer i = 169;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_169_1;
    c_169_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z0zxxxxx1011x01xx0x0xxxzz01z0zzzxzxxxxxzzxzzxzzzzzxzzzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
