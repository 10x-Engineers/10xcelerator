class c_3039_1;
    integer i = -505;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3039_1;
    c_3039_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx000zz001xx0x1zz1x0z01x11xz00z0xxzxxxxxxxzzzzzxxxxxzzxxzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
