class c_735_1;
    integer i = 735;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_735_1;
    c_735_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0000x0z1110z010zz01x1zzx01101101xxxxxxxxzzzzzxxzxxxzxxxzxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
