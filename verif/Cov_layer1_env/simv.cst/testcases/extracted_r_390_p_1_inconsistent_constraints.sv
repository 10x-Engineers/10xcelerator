class c_390_1;
    integer i = -388;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_390_1;
    c_390_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0xz00x0z0000xxxzz0zxxzx1xz1zzxxzzxxxxzzzzxxzxxzxzxxzzzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
