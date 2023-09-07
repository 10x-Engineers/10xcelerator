class c_500_1;
    integer i = 500;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_500_1;
    c_500_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01z100110xxz100zzx1x111x0z1zzzzxxzxzzzzzzzxzzzxxzxxzzzxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
