class c_414_1;
    integer i = -412;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_414_1;
    c_414_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxz01xxzx1xxzzz10xz10x0z0x100zzxzzzzzxzxzzxxzxxxxxzzzzxzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
