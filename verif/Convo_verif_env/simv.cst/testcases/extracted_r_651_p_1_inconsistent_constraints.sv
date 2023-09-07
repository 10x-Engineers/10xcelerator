class c_651_1;
    integer i = 651;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_651_1;
    c_651_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1xz1x1z1zzxxxx110xxzz0zxx0zz1xxzxzxxzzxxxxzzzzxzxzxzxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
