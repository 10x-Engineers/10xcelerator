class c_62_1;
    integer i = 62;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_62_1;
    c_62_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0zzzzx0z0x00xzzz0011xz11x111x1zxxzxzxzxxxxzzxxzxzzzxzxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
