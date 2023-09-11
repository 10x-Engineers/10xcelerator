class c_417_1;
    integer i = 417;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_417_1;
    c_417_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x00110xx11xx1z0x1x11z0xx0xxxzzzzxxxxxxzzxxxzzzxxzxzzxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
