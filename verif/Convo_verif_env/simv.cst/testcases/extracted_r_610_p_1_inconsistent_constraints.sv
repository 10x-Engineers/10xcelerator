class c_610_1;
    integer i = 610;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_610_1;
    c_610_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zz0x0xxx10xxzzz01110zzx111011zzzxzzxzzxzxzzzzxxzzzzxxxzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
