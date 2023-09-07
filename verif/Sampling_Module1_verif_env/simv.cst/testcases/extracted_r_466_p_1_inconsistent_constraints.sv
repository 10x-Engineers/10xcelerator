class c_466_1;
    integer i = 466;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_466_1;
    c_466_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z110z00zz0z001z000xzzzxzzx0z111zxzxxxzzxzxzxxxxxzxxzzxxxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
