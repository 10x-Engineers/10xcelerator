class c_3161_1;
    integer i = -525;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3161_1;
    c_3161_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxzx01x1x0xxxzz1zx10zxxzz101xx1zxxxzxzzxxxzzzxxxzzzzxzxxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
