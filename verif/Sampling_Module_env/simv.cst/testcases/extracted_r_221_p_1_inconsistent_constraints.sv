class c_221_1;
    integer i = 221;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_221_1;
    c_221_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x000z01zzxzx1zzz0xx1z1z1zxz1zzxxxzzzzxzxxzzxzzzxzxzzxxzxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
