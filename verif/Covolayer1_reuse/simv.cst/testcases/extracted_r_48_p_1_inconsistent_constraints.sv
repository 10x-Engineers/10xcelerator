class c_48_1;
    integer i = -46;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_48_1;
    c_48_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zz101x1001100z1zzx0zxxz01z100zzxzxxzzzxzzzzxzzzxxzxzxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
