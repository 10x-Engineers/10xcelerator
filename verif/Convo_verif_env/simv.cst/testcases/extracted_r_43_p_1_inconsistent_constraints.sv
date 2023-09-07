class c_43_1;
    integer i = 43;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_43_1;
    c_43_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z01z00zx1z1zzzx1110xx0zxx10z1zzxzzxzxxxzzxzzxxzzxxzxxzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
