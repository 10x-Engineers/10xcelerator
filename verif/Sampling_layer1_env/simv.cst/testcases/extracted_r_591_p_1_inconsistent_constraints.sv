class c_591_1;
    integer i = -97;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_591_1;
    c_591_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1110xx01z00z0zx0z1z0zz00zzz11101zxxxzzzxxzzxzxzxxxzxzxzxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
