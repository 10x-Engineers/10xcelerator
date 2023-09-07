class c_1951_1;
    integer i = -324;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1951_1;
    c_1951_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10xxzz01z11z0z01z1zzz11101zz0zzxxxxzxxxxxzzxxxxzzxzxzzxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
