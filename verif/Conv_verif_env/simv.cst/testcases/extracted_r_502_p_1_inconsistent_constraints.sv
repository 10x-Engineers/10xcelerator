class c_502_1;
    integer i = 502;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_502_1;
    c_502_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z0z11zxxz110z01z1zz10zxx0z110xzxzxzzzzxxzxxzzzxzzxzxxzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
