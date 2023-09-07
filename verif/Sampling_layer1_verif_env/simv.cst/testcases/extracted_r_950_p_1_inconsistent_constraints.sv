class c_950_1;
    integer i = -157;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_950_1;
    c_950_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zzxz10xxxzx01z0xz0011x10x1001zzzzzzzzxzzzzxxxxzxxzxxxxzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
