class c_2861_1;
    integer i = -475;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2861_1;
    c_2861_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z011z11z1z01z0x1101110xz00xxz1zzxxxxzzxzzxxxxzxzzzzxzxzxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
