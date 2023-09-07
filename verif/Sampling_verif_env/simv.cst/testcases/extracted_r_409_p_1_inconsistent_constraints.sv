class c_409_1;
    integer i = 409;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_409_1;
    c_409_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzz01z00x1x1xxx10zx1zz1zz0xx11xxzzxzzxxxxzxzzxxzzxxxzxzxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
