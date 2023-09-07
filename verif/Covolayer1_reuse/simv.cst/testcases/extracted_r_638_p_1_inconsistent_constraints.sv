class c_638_1;
    integer i = -636;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_638_1;
    c_638_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1001xxx1zxz00xzzxxxz1zxz001xxxxxzxxxzxzxzxxxxxzxxzzzxxxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
