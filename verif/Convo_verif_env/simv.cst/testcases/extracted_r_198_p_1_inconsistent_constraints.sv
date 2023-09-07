class c_198_1;
    integer i = 198;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_198_1;
    c_198_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x010x000xxzxz0xxxx10x10x0zxxx1zzxxzxzxxxzxzzzxzxxzzzxzzxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
