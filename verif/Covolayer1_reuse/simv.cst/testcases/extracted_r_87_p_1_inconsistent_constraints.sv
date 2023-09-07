class c_87_1;
    integer i = -85;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_87_1;
    c_87_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx101z01z01x10zzz01x011xzx1z00x0zxzzzzxxxxzzzxxzxzzxxxxzxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
