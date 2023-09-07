class c_585_1;
    integer i = -583;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_585_1;
    c_585_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010101011zx1zzz010zxx11zzz01011zxxxxxzzxxzzxxxzzxzxzzxzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
