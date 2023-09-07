class c_461_1;
    integer i = -459;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_461_1;
    c_461_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01z1zx1xxx01z0z111zx1xz1x1x010xzxzxxxxzxzzzzxxxxzzzzxzxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
