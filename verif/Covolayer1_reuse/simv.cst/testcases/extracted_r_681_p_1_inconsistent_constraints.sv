class c_681_1;
    integer i = -679;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_681_1;
    c_681_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1x1z01x1x01z01zx1z1z11z110x11zzxzxxxxxzzzzzxxzxxzxxzzzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
