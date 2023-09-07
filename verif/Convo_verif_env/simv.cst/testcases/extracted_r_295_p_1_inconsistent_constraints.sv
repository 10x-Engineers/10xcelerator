class c_295_1;
    integer i = 295;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_295_1;
    c_295_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zz0001xx01z1z0z0zzz0zx1z0zz0zzxzzxzxzzzxxxxxxxxzxzxzzxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
