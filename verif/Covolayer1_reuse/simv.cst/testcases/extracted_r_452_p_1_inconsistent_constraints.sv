class c_452_1;
    integer i = -450;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_452_1;
    c_452_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzz11zxzzxx1x01z1xx110zxz1001zxxzxxxxzzzzzzzzxxzxzxxxxxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
