class c_88_1;
    integer i = -86;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_88_1;
    c_88_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xzx0x1zz10z0000x1x1z10x01z1z11zxxxzxzxxxxxxxxzxzzxxzzzzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
