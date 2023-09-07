class c_149_1;
    integer i = -147;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_149_1;
    c_149_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x0z1xxzzx1xz0011xzx1zxxx1x0z00zzxzzxzxxzxzzxzzzxxzzxzxxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
