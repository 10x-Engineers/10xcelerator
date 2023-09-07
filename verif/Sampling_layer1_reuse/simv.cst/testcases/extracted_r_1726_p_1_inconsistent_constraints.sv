class c_1726_1;
    integer i = -286;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1726_1;
    c_1726_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11zz10zz01101x1xz01z1xxz01xx0z1xzxxxxxzzzxzzxxzzxzzzzzzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
