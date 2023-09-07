class c_623_1;
    integer i = -621;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_623_1;
    c_623_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzzx01zx1xz0xzx1z1xx01111x0z00zzxzxxxzxzzxzzzxxzzxzxxzzzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
