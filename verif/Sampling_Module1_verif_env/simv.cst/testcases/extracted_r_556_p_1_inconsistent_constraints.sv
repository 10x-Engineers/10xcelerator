class c_556_1;
    integer i = 556;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_556_1;
    c_556_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1111001zxz10zzz111z100zx0xzzzxxxzxzzxxxzxxxzzxxxzzzzxxxxxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
