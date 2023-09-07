class c_607_1;
    integer i = -605;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_607_1;
    c_607_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxx11z01xx01zx1xz0xx01z11z00zx1zzzzzzxxzxzzxzxzzxxxxzxxxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
