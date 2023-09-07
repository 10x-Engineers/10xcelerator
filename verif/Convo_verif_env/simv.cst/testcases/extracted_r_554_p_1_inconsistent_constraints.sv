class c_554_1;
    integer i = 554;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_554_1;
    c_554_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzz010zxz0x10zxx11zxxzx10xxzx10zxzzzzzxxzxzxzzxzxzzzzxxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
