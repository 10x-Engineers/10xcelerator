class c_191_1;
    integer i = -189;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_191_1;
    c_191_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xxz0zzx01x1zxx101xx1xzz001010xzxzzxzzzzxzzzzzzxxzzxxxzzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
