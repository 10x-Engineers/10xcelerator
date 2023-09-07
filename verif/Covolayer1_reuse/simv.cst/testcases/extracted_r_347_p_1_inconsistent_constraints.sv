class c_347_1;
    integer i = -345;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_347_1;
    c_347_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0z011x10xx1110xxx1zxxzxz00zz0zzxzxzzzxxxzxzxzxzxzzzzxzzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
