class c_445_1;
    integer i = -443;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_445_1;
    c_445_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz01x1x11101zzx0xzz01110x001zz1xzxxzxxzxzxxxzxzxzxzxzzxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
