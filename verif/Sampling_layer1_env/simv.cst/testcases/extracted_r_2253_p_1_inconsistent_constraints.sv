class c_2253_1;
    integer i = -374;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2253_1;
    c_2253_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1x00110zx0z10z011xxzxzx011z001xzxzxxzxxzxxzxzxzzzzxxzzxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
