class c_564_1;
    integer i = 564;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_564_1;
    c_564_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01zx0011xx1z1xz1001001xx00xx0zxzxzzxxxxxzxxzzxzxxxxzzzxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
