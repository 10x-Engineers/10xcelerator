class c_770_1;
    integer i = -768;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_770_1;
    c_770_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x111zzz1zzx11x0zzx0110x100xxx0zxxxzzxzxxxxzzzxxxzxzxxxxxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
