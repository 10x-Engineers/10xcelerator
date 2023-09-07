class c_2206_1;
    integer i = -366;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2206_1;
    c_2206_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zx01z01z11zzz1zz0z1xz00zzz010xzzzzxxxxxxxxzxxzzxxxzzzxzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
