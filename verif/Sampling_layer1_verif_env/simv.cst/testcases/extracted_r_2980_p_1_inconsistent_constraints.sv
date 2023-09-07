class c_2980_1;
    integer i = -495;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2980_1;
    c_2980_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01zzxz01100xzzxz001z1zz11101x1zzxzxxzzxxzxzxxzzzzzzzxxxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
