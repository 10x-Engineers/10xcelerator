class c_616_1;
    integer i = 616;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_616_1;
    c_616_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzz001zz0z0zxxxx01z0z0x1z0110xxzzzzxzzxxzxxzzzzzxxxxzxzxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
