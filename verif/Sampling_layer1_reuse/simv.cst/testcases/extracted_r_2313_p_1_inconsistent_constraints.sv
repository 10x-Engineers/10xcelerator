class c_2313_1;
    integer i = -384;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2313_1;
    c_2313_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1111zzzz1zzz11z1z01x1100xxz00xxzxxxzxxxzxzzxzxxzzzzzzzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
