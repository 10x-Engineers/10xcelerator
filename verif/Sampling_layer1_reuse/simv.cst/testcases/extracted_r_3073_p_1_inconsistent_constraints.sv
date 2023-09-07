class c_3073_1;
    integer i = -511;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3073_1;
    c_3073_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000xx01zxzzzx01zzx0100z001z1x0xxzzzzxxzxxxzxxxxzzxxxzzzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
