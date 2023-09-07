class c_211_1;
    integer i = 211;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_211_1;
    c_211_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz1zz0000zzxxxz1x11z100xx0101xxzxxzxzzzxzxzxzzzxxxzxzxzzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
