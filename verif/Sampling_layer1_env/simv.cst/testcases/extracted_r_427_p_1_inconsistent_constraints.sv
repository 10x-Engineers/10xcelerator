class c_427_1;
    integer i = -70;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_427_1;
    c_427_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01z1zx00x10z110100zzzxx011zx1x1xxxxzxxzzxxzzzxxxxxzzzzxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
