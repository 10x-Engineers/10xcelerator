class c_654_1;
    integer i = -652;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_654_1;
    c_654_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zz00x0z10011xz01z0x1xx0x10x1zxzxxxxxzxxxxxxzzxxxxzzxxzxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
