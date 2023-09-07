class c_686_1;
    integer i = -684;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_686_1;
    c_686_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01zx1z00xz0zz0zzz1100xz0z1zx1xzxxzxzxxxxxzzzzxzzzzxzxzzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
