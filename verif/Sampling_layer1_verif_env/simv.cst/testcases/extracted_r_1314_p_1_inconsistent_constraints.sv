class c_1314_1;
    integer i = -217;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1314_1;
    c_1314_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zzxz11x1x1101xx01z01111010z0zzzzxzzzxxxzxzzzxzxxxzxzzzxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
