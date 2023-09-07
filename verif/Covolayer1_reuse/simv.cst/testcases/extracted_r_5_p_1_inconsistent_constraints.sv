class c_5_1;
    integer i = -3;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_5_1;
    c_5_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110zzx00xz11xz0xz0zzxzx0xxzxzxxzxxxxxzzzzxxxzxzxzxxxzxzzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
