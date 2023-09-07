class c_528_1;
    integer i = -526;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_528_1;
    c_528_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0z0z00xx1xx0x1xzxzz1xz001xx11zzzzxxzzxxzzzxxxzxzxzxxxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram