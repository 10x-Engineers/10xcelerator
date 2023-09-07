class c_684_1;
    integer i = -112;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_684_1;
    c_684_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01z11z0xx00xz11xxxxz10zz1xz1111zzzzxxxzxzzxxxzxxzxxxzxzzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
