class c_734_1;
    integer i = -732;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_734_1;
    c_734_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxz11zx00zx1001zz01xx100x1110zzxxzxxxzxzxxxzzxzzzxxxzxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
