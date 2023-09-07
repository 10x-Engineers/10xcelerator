class c_3449_1;
    integer i = -573;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3449_1;
    c_3449_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011zx011x011x10xxzz01z1zzx0xxxzxzxxxzxzxzxxzxzzzzxxzxxzxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
