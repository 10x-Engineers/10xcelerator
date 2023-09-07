class c_579_1;
    integer i = 579;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_579_1;
    c_579_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1010z00x0z01z1zz0000x0z001z100xzxxxxxzzzxzxzxzxzxxxxzxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
