class c_146_1;
    integer i = -144;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_146_1;
    c_146_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xz00z0zzx01zxxzx011x00z00z1z11xzxxzxxxxxxxzzxzxzzxxxxzzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
