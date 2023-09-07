class c_156_1;
    integer i = -154;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_156_1;
    c_156_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x0zz110z1x0010xxx10z0zz0z0zzxzxxxxxzxxxzxzzzxxzxzxzxzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
