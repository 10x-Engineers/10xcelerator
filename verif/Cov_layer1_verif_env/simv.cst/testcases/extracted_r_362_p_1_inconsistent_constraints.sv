class c_362_1;
    integer i = -360;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_362_1;
    c_362_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z0x000zx0x111z0z1x111zz001z1xzxzxzxzzxxxxzxzzzzxxxzzzxxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
