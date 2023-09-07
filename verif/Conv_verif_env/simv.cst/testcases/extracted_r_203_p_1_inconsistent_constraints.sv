class c_203_1;
    integer i = 203;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_203_1;
    c_203_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1zz0zxxz00z01z0z110xx001z1x10zzxxxzzxxxxzzxzxxzxzxxxzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
