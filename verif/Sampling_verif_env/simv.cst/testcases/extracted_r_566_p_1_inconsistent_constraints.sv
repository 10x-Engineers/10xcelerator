class c_566_1;
    integer i = 566;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_566_1;
    c_566_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1z0zzx11z00z0z0z000z01z1zz00x0zxxxzzxxzxzxzxxxzxzzzzxxzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
