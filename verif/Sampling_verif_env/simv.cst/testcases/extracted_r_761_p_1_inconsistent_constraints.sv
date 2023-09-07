class c_761_1;
    integer i = 761;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_761_1;
    c_761_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x10xzxz0x0z00001x110zxxx11xzz0zzxzxzzxxxzxxzxxxzxzzxzzzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
