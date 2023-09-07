class c_638_1;
    integer i = 638;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_638_1;
    c_638_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110110x00x0x100z101z1x1z01z00101zxxzxzzxxxzzzxxxxxzzxxzzzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
