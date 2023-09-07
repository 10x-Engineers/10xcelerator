class c_39_1;
    integer i = 39;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_39_1;
    c_39_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z111z1z1zzz11zxxz00xx00xzxz0xxzzzzxxxxzzxzxxzxzxxxxxzxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
