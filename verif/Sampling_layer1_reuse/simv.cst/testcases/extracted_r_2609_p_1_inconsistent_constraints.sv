class c_2609_1;
    integer i = -433;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2609_1;
    c_2609_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx01z1101z00100x11zzz1zxz00zz10zxzzzxzzxxxzxzxzxzzzxzzzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
