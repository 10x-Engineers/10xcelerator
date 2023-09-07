class c_3359_1;
    integer i = -558;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3359_1;
    c_3359_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0x101xz001x1xz000zzxxx0xxxxx1xxxxzzxxzzzzzzzzzxxxzzzxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
