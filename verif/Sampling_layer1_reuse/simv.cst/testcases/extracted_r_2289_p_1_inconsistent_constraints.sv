class c_2289_1;
    integer i = -380;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2289_1;
    c_2289_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0zx11zxzx01z0zxzz0zzx0z0z11zxxxxxzzxxzzxxxxxzxxxxxxxxzzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
