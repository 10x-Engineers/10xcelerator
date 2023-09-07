class c_152_1;
    integer i = -150;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_152_1;
    c_152_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1xxx1zxzzxzzzx01xxx001100x0xzxzzxzxzxzxxxxzzxzzzzzxzzzzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
