class c_27_1;
    integer i = -25;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_27_1;
    c_27_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0010xx0z1zz1zzx0zxx01x10zz0zzzxzxxzxxxzxzxzzzzxxxxxzxzxzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
