class c_1714_1;
    integer i = -284;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1714_1;
    c_1714_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x0zzx01z010101zz00x1zx010xxzzxzzxzzxzxxzzzxxxxxzzxzzxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
