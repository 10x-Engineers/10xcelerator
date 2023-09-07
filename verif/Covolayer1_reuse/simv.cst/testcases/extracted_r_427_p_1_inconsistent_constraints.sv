class c_427_1;
    integer i = -425;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_427_1;
    c_427_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x010zxx10zx111zzx0z10xxzzzx01x1xxzxxxxxxxxzxxzxxxxxzxxxxxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
