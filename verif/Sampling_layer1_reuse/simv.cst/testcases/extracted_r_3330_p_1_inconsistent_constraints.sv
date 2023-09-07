class c_3330_1;
    integer i = -553;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3330_1;
    c_3330_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzzzx1x0z1zx0zz0110x001z0z001zzxzxxzzzzzxxxxxxzxzxxxzzxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
