class c_668_1;
    integer i = 668;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_668_1;
    c_668_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x101xx1zx010zz1z0z0x01z0z0011xxzzxxxxxzzzzxzxzxzzxxzxxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
